package br.com.uff.controller;

import br.com.uff.model.Hospedagem;
import br.com.uff.model.Usuario;
import br.com.uff.service.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class AvaliarHospedeHospedeiro extends HttpServlet {
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String idHospedagemInformado = req.getParameter("hospedagemId");
        String descricaoInformada = req.getParameter("descricao");
        String notaInformada = req.getParameter("nota");

        Integer idHospedagem = Integer.parseInt(idHospedagemInformado);
        Integer nota = Integer.parseInt(notaInformada);

        Dao dao = new Dao();

        Hospedagem hospedagem = dao.buscarHospedagemId(idHospedagem);

        Usuario hospede = (Usuario) session.getAttribute("usuarioLogado");

        Usuario hospedeiro = hospedagem.getHospedeiro();

        dao.insereAvaliacaoHospedeiroxHospede(hospede, hospedeiro, descricaoInformada, nota);
        RequestDispatcher dispatcher = req.getRequestDispatcher("perfilLogado.jsp");
        dispatcher.forward(req, resp);
    }
}
