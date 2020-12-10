/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.FlightDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Flight;

/**
 *
 * @author TRAN TIEN ANH
 */
public class ManageFlightServlet extends HttpServlet {
       FlightDao fDao = new FlightDao();

     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        String macb = request.getParameter("macb");
        try{
           
        switch(command){
            
      
         case "delete":
                      
                       fDao.deleteFlight(Integer.parseInt(macb));
                       url="/QUANLYBANVEMAYBAY/admin/ManageFlight.jsp";
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
        
         request.setCharacterEncoding("utf-8");
     response.setCharacterEncoding("UTF-8");
       
        

        String url = "", error = "";
        
                      
         try {
            int count=1;
             int mamb =0, masb =0, makm= 0;
                       for (Flight p : fDao.getListFlight()) {
                           p.getMacb();
                           count++;
                       }
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                      
                        if("VietNamAirline".equals(request.getParameter("hangmb"))){
                             mamb = 2;
                        }
                        else if("VietJet".equals(request.getParameter("hangmb"))){
                           mamb = 3;
                        }
                        else{
                            mamb = 1;
                        }
                        //sanbay
                        if("Nội Bài".equals(request.getParameter("sanbay"))){
                            masb = 1;
                        }
                        else if("Tân Sơn Nhất".equals(request.getParameter("sanbay"))){
                            masb = 2;
                        }
                        else if("Cát Bi".equals(request.getParameter("sanbay"))){
                            masb = 3;
                        }
                        else if("Cam Ranh".equals(request.getParameter("sanbay"))){
                            masb = 4;
                        }
                        else if("Phú Quốc".equals(request.getParameter("sanbay"))){
                            masb = 5;
                        }
                        else if("Phú Bài".equals(request.getParameter("sanbay"))){
                            masb = 6;
                        }
                        else masb =7;
                        
                        
                        
                        String noidi = request.getParameter("noidi");
                        String noiden = request.getParameter("noiden");
                        Date ngaydi = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("ngaydi"));
                        Date ngayden = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("ngaydi"));
//                        Time giobay  =  (Time) new SimpleDateFormat("h:mm a").parse(request.getParameter("giobay"));
//                        Time gioden  =  (Time) new SimpleDateFormat("h:mm a").parse(request.getParameter("giohacanh"));
//                        double khoangthoigian = (double)(gioden.getTime() - giobay.getTime());
                        double khoangthoigian = Double.parseDouble(request.getParameter("giobay"));
                        double gia = Double.parseDouble(request.getParameter("gia"));
                        
                        fDao.insertFlight(new Flight(count,mamb, masb, noidi, noiden, ngaydi, ngayden, khoangthoigian,gia, makm));
                        url = "/QUANLYBANVEMAYBAY/admin/ManageFlight.jsp";
                        break;
                    case "update":

                       
                        int macb = Integer.parseInt(request.getParameter("macb"));
                        int mamb1 = Integer.parseInt(request.getParameter("mamb"));
                        int masb1 = Integer.parseInt(request.getParameter("masb"));
                         String noidi1 = request.getParameter("diemdi");
                        String noiden1 = request.getParameter("diemden");
                        Date ngaydi1 = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("thoigiandi"));
                        Date ngayden1 = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("thoigianden"));
                        double khoangthoigian1 = Double.parseDouble(request.getParameter("khoangthoigian"));
                        double gia1 = Double.parseDouble(request.getParameter("gia"));
                        int makm1 = Integer.parseInt(request.getParameter("makm"));
                        
                        fDao.updateFlight(new Flight(macb,mamb1, masb1, noidi1, noiden1, ngaydi1, ngayden1, khoangthoigian1,gia1, makm1));
                        url = "/QUANLYBANVEMAYBAY/admin/ManageFlight.jsp";
                        break;
                     case "search":
                        String txtSearch = request.getParameter("inputFlight");
                        url= "/QUANLYBANVEMAYBAY/admin/resultFlight.jsp?&&inputFlight="+txtSearch;
              
                        break;
                    
                }
            } else {
                url = "/QUANLYBANVEMAYBAY/admin/ManageFlight.jsp";
            }
        } catch (Exception e) {
        }

         response.sendRedirect(url);

    }

}
