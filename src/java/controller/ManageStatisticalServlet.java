/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.StatisticalDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManageStatisticalServlet extends HttpServlet {

     StatisticalDao sDao = new StatisticalDao();

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String command = request.getParameter("command");
        
  
       
        

        String url = "", error = "";
       

        try {
           
            if (error.length() == 0) {
                switch (command) {
                       case "search":
                        String tk = request.getParameter("statistical");
                        String ltk = request.getParameter("TypeStatistical");
                        String quy = request.getParameter("quarter");
                        String thang = request.getParameter("month");
                        String nam = request.getParameter("year");
                        if(tk !=null && ltk != null&& thang != null && nam != null){
                             url= "/QUANLYBANVEMAYBAY/admin/resultStatistical.jsp?&&statistical="+tk+"&&TypeStatistical="+ltk+"&&month="+thang+"&&year="+nam;
                        }
                        else if(tk == "2" && ltk == "Tháng" && thang != null && nam != null)
                       {
                             url= "/QUANLYBANVEMAYBAY/admin/resultStatistical1.jsp?&&statistical="+tk+"&&TypeStatistical="+ltk+"&&month="+thang+"&&year="+nam;
                        }
              
                        break;
                    
                    
                }
            } else {
                url = "/QUANLYBANVEMAYBAY/admin/Statistical.jsp";
            }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }

}

