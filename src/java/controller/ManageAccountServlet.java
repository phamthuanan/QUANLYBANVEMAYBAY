/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.AccountDao;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManageAccountServlet extends HttpServlet {

   AccountDao adDao = new AccountDao();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
      
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //Biến lưu trữ chức năng chèn hay update...
        String command = request.getParameter("command");
        
        String url = "";
        Account ad = new Account();
     
        HttpSession session = request.getSession();
        switch(command){
            case "login":
                ad = adDao.login(request.getParameter("UsernameOrEmail"), (request.getParameter("Password")));
                if (ad != null && ad.getQuyen()==1 ){
                    session.setAttribute("admin", ad);
                    url = "/QUANLYBANVEMAYBAY/admin/index.jsp";
                   
                }
                else if (ad != null && ad.getQuyen()==0 ){
                    session.setAttribute("user", ad);
                    url = "/QUANLYBANVEMAYBAY/user/index.jsp";
                }
               else{
                    request.setAttribute("error", "Lỗi tên đăng nhập hoặc mật khẩu");
                    url = "/QUANLYBANVEMAYBAY/user/login.jsp";
                }
                break;
            
    }
        response.sendRedirect(url);
   }

}
