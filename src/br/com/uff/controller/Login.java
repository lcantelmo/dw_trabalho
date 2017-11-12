package br.com.uff.controller;

import br.com.uff.model.Administrador;
import br.com.uff.model.Aluno;
import br.com.uff.model.Professor;
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


public class Login extends HttpServlet{

    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Sempre que carregarmos a classe, vamos capturar a sessão do usuário, para verificar se o campo "usuario.logado" da Session está preenchido.

        //Captura de parâmetros e acesso ao banco, com a query.
        String matriculaInformada = request.getParameter("login");
        String senhaInformada = request.getParameter("senha");
        try {
            //EntityManager manager = new JPAUtil().getEntityManager();
            //Query consulta = manager.createQuery("select user from Usuario user where user.email = :pEmail and user.senha = :pSenha");
            //consulta.setParameter("pEmail", emailInformado);
            //consulta.setParameter("pSenha", senhaInformada);

            //Usuario usuarioEncontrado = (Usuario) consulta.getSingleResult();
            Dao dao = new Dao();
            Usuario usuarioEncontrado = dao.buscarUsuarioPelaMatriculaESenha(matriculaInformada, senhaInformada);
            //Já que encontramos o usuário, vamos iniciar a Session
            HttpSession session = request.getSession();
            session.setAttribute("usuarioLogado", usuarioEncontrado);

            if(usuarioEncontrado instanceof Administrador){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/homeAdmin");
                dispatcher.forward(request, response);
            }
            if(usuarioEncontrado instanceof Aluno){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/homeAluno");
                dispatcher.forward(request, response);
            }
            if(usuarioEncontrado instanceof Professor){
                RequestDispatcher dispatcher = request.getRequestDispatcher("/homeProfessor");
                dispatcher.forward(request, response);
            }

        } catch (NoResultException e){
            //Informa que não encontrou o usuario. Retornamos para a tela de login.
            request.setAttribute("mensagemRetorno", "Usuario nao encontrado. Digite novamente.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
