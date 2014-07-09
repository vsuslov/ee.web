/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ru.rs.ee.web.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dns
 */
public class Checker extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uname=req.getParameter("userName");
        String pwd=req.getParameter("pass");
        
        if("vadik".equals(uname) && "123".equals(pwd)) {
            req.getSession().setAttribute("name", uname);
        }
        RequestDispatcher disp=req.getRequestDispatcher("/web");
        disp.forward(req, resp);
    }
    
    
}
