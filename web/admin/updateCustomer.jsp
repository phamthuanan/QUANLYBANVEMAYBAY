<%-- 
    Document   : updateCustomer
    Created on : Dec 8, 2020, 2:56:27 PM
    Author     : TRAN TIEN ANH
--%>

<%@page import="model.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CustomerDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!--Icon-->
    <script src="https://kit.fontawesome.com/6ea5e95864.js" crossorigin="anonymous"></script>
    <!-- CSS Components-->
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/sidebar.css">
    <link rel="stylesheet" href="./css/layout.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/tableInfor.css">
    <link rel="stylesheet" href="./css/breadcrumb.css">
    <link rel="stylesheet" href="./css/ManegeCustomer/ManegeCustomer.css">
    <title>Quản lý thông tin khách hàng</title>
  </head>
  <body>
      <%
      
            Customer customer = new CustomerDao().getListCustomer(Integer.parseInt(request.getParameter("makh")));
      %>
    <div class="swapper">
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="body-content">
            <jsp:include page="SideBar.jsp"></jsp:include>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                          <li class="breadcrumb-item" aria-current="page"><a href="index.jsp"><i class="fas fa-home"></i> Trang chủ</a></li>
                          <li class="breadcrumb-item active" aria-current="page"><a href="ManageCustomer.jsp">Quản lý khách hàng</a></li>
                         
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                     <div>
                <h3  align="center" style="background-color: white;font-weight: bold;color: red"><b>CẬP NHẬT KHÁCH HÀNG</b></h3>
                <form  action="/QUANLYBANVEMAYBAY/ManageCustomerServlet" method="post" >
                    <table width="50%" style="margin-left: 300px;background-color: lightblue;color: white;">
                      <tr>
                            <td >
                                <b>Mã khách hàng</b>
                            </td>
                            <td>
                                <input type="text"  name="makh" value="<%=customer.getMakh() %>">
                            </td>
                        </tr>
                      
                        <tr>
                            <td>
                                <b>Họ tên</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text" name="hoten"  value="<%=customer.getHoten()%>">
                            <br><br>
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                <b>Email</b>
                                <br><br>
                            </td>
                            <td>
                               
                                   <input type="text"  name="email"  value="<%=customer.getEmail()%>"> 
                                     <br>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>
                                <b>Địa chỉ</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="diachi"  value="<%=customer.getDiachi()%>">
                            <br><br>
                            </td>
                          
                        </tr>
                        <tr>
                            <td>
                                <b>Số điện thoại</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="sdt"  value="<%=customer.getSdt()%>">
                            <br><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Loại khách hàng</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="loaikh" value="<%=customer.getLoaikh()%>">
                            <br><br>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Username</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="username" value="<%=customer.getUsername()%>">
                            <br><br>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Điểm</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="diem" value="<%=customer.getDiem()%>">
                            <br><br>
                             
                            </td>
                           
                        </tr>
                             <tr>
                                 <td>
                                <button type="submit" value="update" name="command">Cập nhật</button>
                                 </td>
                            </tr>
                               
                                
                                <br><br>
                               
                            </td></tr>
                            
                    </table>
                             
                </form>    
              
            </div> 
                        
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script src="./js/controlTableEditInfor.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
