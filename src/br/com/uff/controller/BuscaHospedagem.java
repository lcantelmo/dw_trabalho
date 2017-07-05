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
import java.util.List;

public class BuscaHospedagem extends HttpServlet {
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String pais = req.getParameter("pais");
        String cidade = req.getParameter("cidade");

        Dao dao = new Dao();
        List<Usuario> listUsuario = dao.buscaUsuarioPorLocalidade(pais, cidade);
        session.setAttribute("listUsuarioLocalidade", listUsuario);
        RequestDispatcher dispatcher = req.getRequestDispatcher("listaHospedes.jsp");
        dispatcher.forward(req, resp);
    }
}
