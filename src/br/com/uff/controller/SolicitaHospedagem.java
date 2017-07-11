package br.com.uff.controller;

import br.com.uff.model.Usuario;
import br.com.uff.service.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SolicitaHospedagem extends HttpServlet {
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dao dao = new Dao();
        try {
            String hospedeiroIdInformado = request.getParameter("hospedeiroID2");
            String qtdViajantesInformado = request.getParameter("qtd_viajantes");
            String qtdPraticamSurfInformado = request.getParameter("qtd_praticam_surf");
            String mensagemInformada = request.getParameter("mensagem");
            String dataInicialInformada = request.getParameter("data_inicial");
            String dataFinalInformada = request.getParameter("data_final");

            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");

            HttpSession session = request.getSession();
            Usuario hospede = (Usuario) session.getAttribute("usuarioLogado");
            System.out.println("Recebe o usuário logado");
            Integer hospedeiroID = Integer.parseInt(hospedeiroIdInformado);
            System.out.println("Converteu o id do hospedeiro");
            Usuario hospedeiro = dao.buscarUsuarioPeloId(hospedeiroID);
            System.out.println("Buscou o hospedeiro");

            Integer qtdViajantes = Integer.parseInt(qtdViajantesInformado);
            System.out.println("Converteu a quantidade de Viajantes");
            Integer qtdPraticamSurf = Integer.parseInt(qtdPraticamSurfInformado);
            System.out.println("Converteu a quantidade que praticam surf");

            Date dataInicial = formato.parse(dataInicialInformada);
            System.out.println("Converteu a data inicial");
            Date dataFinal = formato.parse(dataFinalInformada);
            System.out.println("Converteu a data final");

            dao.cadastraHospedagem(hospede, hospedeiro, qtdPraticamSurf, qtdViajantes, dataInicial, dataFinal, mensagemInformada);
            System.out.println("Salvou no BD");
            request.setAttribute("mensagemRetorno", "Solicitação enviada com Sucesso!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("perfilLogado.jsp");
            dispatcher.forward(request, response);
        }catch (Exception e){
            System.out.println("Erro!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("perfilLogado.jsp");
        }
    }
}
