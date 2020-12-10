<%-- 
    Document   : resultCustomerSearch
    Created on : Dec 2, 2020, 10:04:30 PM
    Author     : TRAN TIEN ANH
--%>

<%@page import="dao.TicketDao"%>
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
    <title>Quản lý vé</title>
  </head>
  <body>
      <%
           TicketDao cDao = new TicketDao();
           String kh = "";
           String noidi = "";
           String noiden = "";
            if (request.getParameter("nameCustomer") != null && request.getParameter("placeFrom") != null && request.getParameter("placeTo") != null) {
            kh = request.getParameter("nameCustomer");
            noidi = request.getParameter("placeFrom");
            noiden = request.getParameter("placeTo");
         }
             ArrayList list1 = cDao.getListTicket(kh,noidi,noiden);
            
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
                          <li class="breadcrumb-item active" aria-current="page"><a href="ManageTicket.jsp">Quản lý vé</a></li>
                    
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                     <div class="container">
                        <div class="row">
                            <div class="col-12">
                            
                                    <div class="col-sm-5">
					<div>
                                            <h3>Kết quả tìm kiếm cho <h3 style="color: red"><%=kh %> - <%=noidi%> - <%=noiden%></h3></h3>
						
					</div>
                                    </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <%
                                        if(list1 != null) {
                 
                                          
                                                
                                    %>
                                    <tr>
                                        
                                       <th>Mã vé</th>
                                        <th>Số ghế</th>
                                        <th>Hãng MB</th>
                                        <th>Tên KH</th>
                                        <th>Từ</th>
                                        <th>Đến</th>
                                        <th>Ngày đi</th>
                                        <th>Ngày đến</th>
                                        
                                        <th>Thao tác</th>
                                    </tr>
                                    <tr>
                                      
                                        <td><%=list1.get(0)%></td>
                                        <td><%=list1.get(1)%></td>
                                        <td><%=list1.get(2)%></td>
                                        <td><%=list1.get(3)%></td>
                                        <td><%=list1.get(4)%></td>
                                        <td><%=list1.get(5)%></td>
                                        <td><%=list1.get(6)%></td>
                                        <td><%=list1.get(7)%></td>
                                            <td style="border: 2px solid #dcdcdc;vertical-align: top;">
                                                <center>
                                                    <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updateCustomer.jsp?mave=<%=list1.get(0)%>&command=update">
                                                        Sửa
                                                    </a>&nbsp;| &nbsp;
                                                    <a style="color: #ff66cc;font-weight:  bold;"  onclick="return confirm('Bạn chắc chắn muốn xóa thông tin này!')" href="/QUANLYBANVEMAYBAY/ManageCustomerServlet?mave=<%=list1.get(0)%>&command=delete">
                                                     
                                                        Xóa
                                                    </a>
                                                </center>
                                            </td>
                                        
                                    </tr>
                                    <%   
                                       }
                                         else { 
                                    %>
                                    <h2 style="text-align: center; color: blue">Không tìm thấy kết quả nào</h2>
                                    <%}%>
                                </table>
                            </div>
                        </div>
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
