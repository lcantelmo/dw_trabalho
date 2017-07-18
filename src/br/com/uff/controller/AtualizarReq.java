package br.com.uff.controller;

import br.com.uff.service.Dao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AtualizarReq extends HttpServlet {
    protected void doPost (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String idHospede1 = req.getParameter("hospedeReqId");
        String idHospedeiro1 = req.getParameter("hospedeiroId");


        Integer idHospede = Integer.parseInt(idHospede1);
        Integer idHospedeiro = Integer.parseInt(idHospedeiro1);

        Dao dao = new Dao();
        dao.updateRequisicao(idHospedeiro, idHospede);

        RequestDispatcher dispatcher = req.getRequestDispatcher("perfilLogado.jsp");
        dispatcher.forward(req, resp);
    }
}
