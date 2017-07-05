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

public class BuscaPorEsporte extends HttpServlet {
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String esporte = req.getParameter("esporte");

        Dao dao = new Dao();
        List<Usuario> listUsuarios = dao.buscaPorEsporte(esporte);
        session.setAttribute("listUsuariosEsporte", listUsuarios);
        RequestDispatcher dispatcher = req.getRequestDispatcher("usuariosPorEsporte.jsp");
        dispatcher.forward(req, resp);
    }
}
