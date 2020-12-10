/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.PlaneDao;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Plane;
import org.apache.tomcat.util.http.fileupload.FileItem;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManagePlaneServlet extends HttpServlet {
       PlaneDao pDao = new PlaneDao();

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        String mamb = request.getParameter("mamb");
        try{
           
        switch(command){
            
      
         case "delete":
                      
                       pDao.deletePlane(Integer.parseInt(mamb));
                       url="/QUANLYBANVEMAYBAY/admin/ManagePlane.jsp";
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
          // kiểm tra nếu yêu cầu thực sự có hành động upload file
        String command = request.getParameter("command");
        
       
        

        String url = "", error = "";
       

        try {
            int count=1;
                       for (Plane p : pDao.getListPlane()) {
                           p.getMamb();
                           count++;
                       }
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                       
                        String tenmb = request.getParameter("tenmb");
                        String hangmb = request.getParameter("hangmb");
                        int soghe = Integer.parseInt(request.getParameter("soghe"));
                        int soghetrong = Integer.parseInt(request.getParameter("soghe"));
                        int tinhtrang = 1;
                        pDao.insertPlane(new Plane(count,tenmb, hangmb, soghe, soghetrong, tinhtrang));
                        url = "/QUANLYBANVEMAYBAY/admin/ManagePlane.jsp";
                        break;
                    case "update":
                        int mamb = Integer.parseInt(request.getParameter("mamb"));
                        String tenmb1 = request.getParameter("tenmb");
                        String hangmb1 = request.getParameter("hangmb");
                        int soghe1 = Integer.parseInt(request.getParameter("soghe"));
                        int soghetrong1 = Integer.parseInt(request.getParameter("soghetrong"));
                        int tinhtrang1 = Integer.parseInt(request.getParameter("tinhtrang"));
                        pDao.updatePlane(new Plane(mamb,tenmb1, hangmb1, soghe1, soghetrong1, tinhtrang1));
                        url = "/QUANLYBANVEMAYBAY/admin/ManagePlane.jsp";
                        break;
                    
                    case "search":
                        String txtSearch = request.getParameter("inputPlane");
                        url= "/QUANLYBANVEMAYBAY/admin/resultPlane.jsp?&&inputPlane="+txtSearch;
              
                        break;
                    
                }
            } else {
                url = "/QUANLYBANVEMAYBAY/admin/ManagePlane.jsp";
            }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }

}
