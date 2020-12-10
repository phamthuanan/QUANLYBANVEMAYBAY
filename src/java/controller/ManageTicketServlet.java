/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.TicketDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Ticket;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManageTicketServlet extends HttpServlet {

     TicketDao tDao = new TicketDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        
        String command = request.getParameter("command");
        String url = "";
        String mave = request.getParameter("mave");
        try{
           
        switch(command){
      
         case "delete":
                      
                       tDao.deleteTicket(Integer.parseInt(mave));
                       url="/QUANLYBANVEMAYBAY/admin/ManageTicket.jsp";
                    break;
            }  
        }
        catch (Exception e) {
        }
        response.sendRedirect(url);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        request.setCharacterEncoding("utf-8");
//        response.setCharacterEncoding("utf-8");
        
        
         String command = request.getParameter("command");
        String url = "",error = "";
       try {
         
            if (error.length() == 0) {
                switch (command) {
                   
                    case "search":
                        String kh = request.getParameter("nameCustomer");
                        String noidi = request.getParameter("placeFrom");
                        String noiden = request.getParameter("placeTo");
                        url= "/QUANLYBANVEMAYBAY/admin/resultTicket.jsp?&&nameCustomer="+kh+"&&placeFrom="+noidi+"&&placeTo="+noiden;
              
                        break;
                    
                }
            } else {
                url = "/QUANLYBANVEMAYBAY/admin/ManageTicket.jsp";
            }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }


}
