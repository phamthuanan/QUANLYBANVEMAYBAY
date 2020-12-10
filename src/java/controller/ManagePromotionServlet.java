/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.PromotionDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Promotion;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManagePromotionServlet extends HttpServlet {

     PromotionDao pDao = new PromotionDao();

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        String makm = request.getParameter("makm");
        try{
           
        switch(command){
            
      
         case "delete":
                      
                       pDao.deletePromotion(Integer.parseInt(makm));
                       url="/QUANLYBANVEMAYBAY/admin/ManagePromotion.jsp";
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

        String command = request.getParameter("command");
        
       
        

        String url = "", error = "";
    
        try {
            int count=1;
                       for (Promotion p : pDao.getListPromotion()) {
                           p.getMakm();
                           count++;
                       }
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                       
                        String tenkm = request.getParameter("tenkm");
                        int phantramkm = Integer.parseInt(request.getParameter("phantramkm"));
                        Date ngaybd = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("ngaybd"));
                        Date ngaykt = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("ngaykt"));
                       
                        pDao.insertPromotion(new Promotion(count,tenkm, phantramkm, ngaybd, ngaykt));
                        url = "/QUANLYBANVEMAYBAY/admin/ManagePromotion.jsp";
                        break;
                    case "update":
                        String tenkm1 = request.getParameter("tenkm");
                        int phantramkm1 = Integer.parseInt(request.getParameter("phantramkm"));
                        Date ngaybd1 = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("ngaybd"));
                        Date ngaykt1 = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("ngaykt"));
                        
                        pDao.updatePromotion(new Promotion(count,tenkm1, phantramkm1, ngaybd1, ngaykt1));
                        url = "/QUANLYBANVEMAYBAY/admin/ManagePromotion.jsp";
                        break;
                    
                    
                }
            } else {
                url = "/admin/ManagePromotion.jsp";
            }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }

}
