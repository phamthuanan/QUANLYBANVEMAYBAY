/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CustomerDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManageCustomerServlet extends HttpServlet {
 CustomerDao cDao = new CustomerDao();
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String command = request.getParameter("command");
        String url = "";
        String makh = request.getParameter("makh");
        try{
           
        switch(command){
            
      
         case "delete":
                      
                       cDao.deleteCustomer(Integer.parseInt(makh));
                       url="/QUANLYBANVEMAYBAY/admin/ManageCustomer.jsp";
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
         request.setCharacterEncoding("utf-8");
     response.setCharacterEncoding("UTF-8");
        String url = "";
        try {
           
                switch (command) {
                    case "search":
                        String txtSearch = request.getParameter("searchCustomer");
                        url= "/QUANLYBANVEMAYBAY/admin/resultCustomerSearch.jsp?&&searchCustomer="+txtSearch;
              
                        break;
                    case "update":
                        
                       int makh = Integer.parseInt(request.getParameter("makh"));
                        String hoten = request.getParameter("hoten");
                        String email = request.getParameter("email");
                        String diachi = request.getParameter("diachi");
                        String sdt = request.getParameter("sdt");
                        String loaikh = request.getParameter("loaikh");
                        String username = request.getParameter("username");
                        int diem = Integer.parseInt(request.getParameter("diem"));
                        
                        cDao.updateCustomer(new Customer(makh,hoten, email, diachi, sdt, loaikh, username, diem));
                        url = "/QUANLYBANVEMAYBAY/admin/ManageCustomer.jsp";
                        break;
                    
                    
                }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }
       
}
