package br.com.uff.controller;

import br.com.uff.model.Usuario;
import br.com.uff.service.Dao;

import javax.persistence.NoResultException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Cadastro extends HttpServlet{
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        /*private String nome;
        private String matricula;
        private String cpf;
        private String senha;*/

        String nomeInformado = request.getParameter("nome");
        String matriculaInformada = request.getParameter("matricula");
        String cpfInformado = request.getParameter("cpf");
        String senhaInformada = request.getParameter("senha");

        Usuario usuario;
        Dao dao = new Dao();

        try{
            //Vamos buscar o usuário pela matricula. Caso exista exibe a mensagem de que já existe.
            //Caso contrário, cadastra o usuário
            try {
                usuario = dao.buscarUsuarioPelaMatricula(matriculaInformada);
                System.out.println("Buscou o Usuário");
                request.setAttribute("mensagemRetorno", "Usuário já cadastrado. Não é possível cadastrar novamente.");
                RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                dispatcher.forward(request, response);
            }catch (NoResultException e){
                System.out.println("Não encontrou o Usuário");
                dao.cadastraAluno(nomeInformado, matriculaInformada, cpfInformado, senhaInformada);
                System.out.println("Cadastrou o Usuário");
                request.setAttribute("mensagemRetorno", "Usuário cadastrado com sucesso!");
                RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                dispatcher.forward(request, response);
            }
        }catch (NoResultException e){
            //Informa que não pode cadastrar o endereço do usuário
            request.setAttribute("mensagemRetorno", "Tivemos algum problema com seu cadastro. Entre em contato com o suporte.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
