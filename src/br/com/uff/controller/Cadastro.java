package br.com.uff.controller;

import br.com.uff.model.Endereco;
import br.com.uff.model.Usuario;
import br.com.uff.service.Dao;

import javax.persistence.NoResultException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Cadastro extends HttpServlet{
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String emailInformado = request.getParameter("email");
        String senhaInformada = request.getParameter("password");
        String nomeInformado = request.getParameter("nome");
        String cepInformado = request.getParameter("cep");
        String paisInformado = request.getParameter("pais");
        String estadoInformado = request.getParameter("uf");
        String ruaInformada = request.getParameter("rua");
        String numeroInformado = request.getParameter("numero");
        String complementoInformado = request.getParameter("complemento");
        String bairroInformado = request.getParameter("bairro");
        String cidadeInformada = request.getParameter("cidade");
        String nascimentoInformado = request.getParameter("data_nasc");
        String esporteInformado = request.getParameter("esporte");
        String hospedeiroInformado = request.getParameter("hospedeiro");
        String qntHospedesInformado = request.getParameter("qnt_hospedes");
        Endereco endereco;
        Usuario usuario;
        Dao dao = new Dao();
        Integer cep = Integer.parseInt(cepInformado);
        System.out.println("Converteu o CEP");
        boolean hospedeiro = Boolean.getBoolean(hospedeiroInformado);
        System.out.println("Converteu o Boolean");
        Integer qntHospedes;
        if (qntHospedesInformado == ""){
            qntHospedes = 0;
        }else{
            qntHospedes = Integer.parseInt(qntHospedesInformado);
        }
        System.out.println("Converteu a quantidade de Hóspedes");
        Date data =null;
        System.out.println(nascimentoInformado);
        //Convertendo a string data em Date
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        try{
            data = formato.parse(nascimentoInformado);
            System.out.println("Converteu a Data");
        }catch (ParseException e){
            System.out.println("Data no formato inválido");
        }

        try{
            //Busca o endereço pelo CEP, caso já exista instancia um Endereço com os dados.
            //Caso contrário salva no BD e instancia a informação salva.
            try{
                endereco = dao.buscarEnderecoPeloCep(cep);
                System.out.println("Buscou o endereço");
            }catch (NoResultException e){
                System.out.println("Não encontrou o endereço");
                dao.cadastroEndereco(cep, ruaInformada, bairroInformado, cidadeInformada, estadoInformado, paisInformado);
                System.out.println("cadastrou o endereço");
                endereco = dao.buscarEnderecoPeloCep(cep);
                System.out.println("Recebeu o endereço cadastrado");
            }
            //Vamos buscar o usuário pelo e-mail. Caso exista exibe a mensagem de que já existe.
            //Caso contrário, cadastra o usuário
            try {
                usuario = dao.buscarUsuarioPeloEmail(emailInformado);
                System.out.println("Encontrou o Usuário");
                request.setAttribute("mensagemRetorno", "O usuário já foi Cadastrado!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }catch (NoResultException e){
                System.out.println("Não encontrou o Usuário");
                dao.cadastraUsuario(emailInformado, senhaInformada, nomeInformado, endereco, numeroInformado, complementoInformado,
                        data, "padrao.jpg", esporteInformado, hospedeiro, qntHospedes);
                System.out.println("Cadastrou o Usuário");
                request.setAttribute("mensagemRetorno", "Usuário Cadastrado com Sucesso!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }
        }catch (NoResultException e){
            //Informa que não pode cadastrar o endereço do usuário
            request.setAttribute("mensagemRetorno", "Tivemos algum problema com seu cadastro. Entre em contato com o suporte.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("cadastro.jsp");
            dispatcher.forward(request, response);
        }

    }
}
