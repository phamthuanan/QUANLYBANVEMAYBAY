<%-- 
    Document   : ManageTicket
    Created on : Oct 19, 2020, 10:02:16 PM
    Author     : Pham An
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.TicketDao"%>
<%@page import="dao.FlightDao"%>
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
    <link rel="stylesheet" href="./css/breadcrumb.css">
    <link rel="stylesheet" href="./css/manage_ticket/formSeach.css">
    <link rel="stylesheet" href="./css/tableInfor.css">
    <title>Quản lý vé</title>
  </head>
  <body>
       <% 
     
       TicketDao tDao = new TicketDao();
       
    
        ArrayList list1 = tDao.getAllTicket();
    
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
                                 <div class="formsearchticket">
                                    <form action="/QUANLYBANVEMAYBAY/ManageTicketServlet" method="POST">
                                        <input type="text" placeholder="Tên khách hàng" name="nameCustomer"  class="nameCustomer" >
                                        <select name="placeFrom" class="placeFrom">
                                            <option value="">Nơi đi</option>
                                            <option value="An Giang">An Giang
                                            <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
                                            <option value="Bắc Giang">Bắc Giang
                                            <option value="Bắc Kạn">Bắc Kạn
                                            <option value="Bạc Liêu">Bạc Liêu
                                            <option value="Bắc Ninh">Bắc Ninh
                                            <option value="Bến Tre">Bến Tre
                                            <option value="Bình Định">Bình Định
                                            <option value="Bình Dương">Bình Dương
                                            <option value="Bình Phước">Bình Phước
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Cà Mau">Cà Mau
                                            <option value="Cao Bằng">Cao Bằng
                                            <option value="Đắk Lắk">Đắk Lắk
                                            <option value="Đắk Nông">Đắk Nông
                                            <option value="Điện Biên">Điện Biên
                                            <option value="Đồng Nai">Đồng Nai
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Gia Lai">Gia Lai
                                            <option value="Hà Giang">Hà Giang
                                            <option value="Hà Nam">Hà Nam
                                            <option value="Hà Tĩnh">Hà Tĩnh
                                            <option value="Hải Dương">Hải Dương
                                            <option value="Hậu Giang">Hậu Giang
                                            <option value="Hòa Bình">Hòa Bình
                                            <option value="Hưng Yên">Hưng Yên
                                            <option value="Khánh Hòa">Khánh Hòa
                                            <option value="Kiên Giang">Kiên Giang
                                            <option value="Kon Tum">Kon Tum
                                            <option value="Lai Châu">Lai Châu
                                            <option value="Lâm Đồng">Lâm Đồng
                                            <option value="Lạng Sơn">Lạng Sơn
                                            <option value="Lào Cai">Lào Cai
                                            <option value="Long An">Long An
                                            <option value="Nam Định">Nam Định
                                            <option value="Nghệ An">Nghệ An
                                            <option value="Ninh Bình">Ninh Bình
                                            <option value="Ninh Thuận">Ninh Thuận
                                            <option value="Phú Thọ">Phú Thọ
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Ngãi">Quảng Ngãi
                                            <option value="Quảng Ninh">Quảng Ninh
                                            <option value="Quảng Trị">Quảng Trị
                                            <option value="Sóc Trăng">Sóc Trăng
                                            <option value="Sơn La">Sơn La
                                            <option value="Tây Ninh">Tây Ninh
                                            <option value="Thái Bình">Thái Bình
                                            <option value="Thái Nguyên">Thái Nguyên
                                            <option value="Thanh Hóa">Thanh Hóa
                                            <option value="Thừa Thiên Huế">Thừa Thiên Huế
                                            <option value="Tiền Giang">Tiền Giang
                                            <option value="Trà Vinh">Trà Vinh
                                            <option value="Tuyên Quang">Tuyên Quang
                                            <option value="Vĩnh Long">Vĩnh Long
                                            <option value="Vĩnh Phúc">Vĩnh Phúc
                                            <option value="Yên Bái">Yên Bái
                                            <option value="Phú Yên">Phú Yên
                                            <option value="Cần Thơ">Cần Thơ
                                            <option value="Đà Nẵng">Đà Nẵng
                                            <option value="Hải Phòng">Hải Phòng
                                            <option value="Hà Nội">Hà Nội
                                            <option value="Hồ Chí Minh">Hồ Chí Minh
                                        </select>
                                        <select name="placeTo" class="placeTo">
                                            <option value="">Nơi đến</option>
                                            <option value="An Giang">An Giang
                                            <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
                                            <option value="Bắc Giang">Bắc Giang
                                            <option value="Bắc Kạn">Bắc Kạn
                                            <option value="Bạc Liêu">Bạc Liêu
                                            <option value="Bắc Ninh">Bắc Ninh
                                            <option value="Bến Tre">Bến Tre
                                            <option value="Bình Định">Bình Định
                                            <option value="Bình Dương">Bình Dương
                                            <option value="Bình Phước">Bình Phước
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Bình Thuận">Bình Thuận
                                            <option value="Cà Mau">Cà Mau
                                            <option value="Cao Bằng">Cao Bằng
                                            <option value="Đắk Lắk">Đắk Lắk
                                            <option value="Đắk Nông">Đắk Nông
                                            <option value="Điện Biên">Điện Biên
                                            <option value="Đồng Nai">Đồng Nai
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Đồng Tháp">Đồng Tháp
                                            <option value="Gia Lai">Gia Lai
                                            <option value="Hà Giang">Hà Giang
                                            <option value="Hà Nam">Hà Nam
                                            <option value="Hà Tĩnh">Hà Tĩnh
                                            <option value="Hải Dương">Hải Dương
                                            <option value="Hậu Giang">Hậu Giang
                                            <option value="Hòa Bình">Hòa Bình
                                            <option value="Hưng Yên">Hưng Yên
                                            <option value="Khánh Hòa">Khánh Hòa
                                            <option value="Kiên Giang">Kiên Giang
                                            <option value="Kon Tum">Kon Tum
                                            <option value="Lai Châu">Lai Châu
                                            <option value="Lâm Đồng">Lâm Đồng
                                            <option value="Lạng Sơn">Lạng Sơn
                                            <option value="Lào Cai">Lào Cai
                                            <option value="Long An">Long An
                                            <option value="Nam Định">Nam Định
                                            <option value="Nghệ An">Nghệ An
                                            <option value="Ninh Bình">Ninh Bình
                                            <option value="Ninh Thuận">Ninh Thuận
                                            <option value="Phú Thọ">Phú Thọ
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Bình">Quảng Bình
                                            <option value="Quảng Ngãi">Quảng Ngãi
                                            <option value="Quảng Ninh">Quảng Ninh
                                            <option value="Quảng Trị">Quảng Trị
                                            <option value="Sóc Trăng">Sóc Trăng
                                            <option value="Sơn La">Sơn La
                                            <option value="Tây Ninh">Tây Ninh
                                            <option value="Thái Bình">Thái Bình
                                            <option value="Thái Nguyên">Thái Nguyên
                                            <option value="Thanh Hóa">Thanh Hóa
                                            <option value="Thừa Thiên Huế">Thừa Thiên Huế
                                            <option value="Tiền Giang">Tiền Giang
                                            <option value="Trà Vinh">Trà Vinh
                                            <option value="Tuyên Quang">Tuyên Quang
                                            <option value="Vĩnh Long">Vĩnh Long
                                            <option value="Vĩnh Phúc">Vĩnh Phúc
                                            <option value="Yên Bái">Yên Bái
                                            <option value="Phú Yên">Phú Yên
                                            <option value="Cần Thơ">Cần Thơ
                                            <option value="Đà Nẵng">Đà Nẵng
                                            <option value="Hải Phòng">Hải Phòng
                                            <option value="Hà Nội">Hà Nội
                                            <option value="Hồ Chí Minh">Hồ Chí Minh
                                        </select>
                                        <button type="submit" value="search" name="command" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row">
                                <div class="col-12">
                                    <table class="tableDetail">
                                        
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
                                         <%

                                             if(list1 != null)        {                                           
                                         %>
                                        <tr>
                                             <td><%=list1.get(8)%></td>
                                        <td><%=list1.get(9)%></td>
                                        <td><%=list1.get(10)%></td>
                                        <td><%=list1.get(11)%></td>
                                        <td><%=list1.get(12)%></td>
                                        <td><%=list1.get(13)%></td>
                                        <td><%=list1.get(14)%></td>
                                        <td><%=list1.get(15)%></td>
                                        
                                        
                                        
                                        
                                         <td style="border: 2px solid #dcdcdc;vertical-align: top;">
                                            <center>
                                                <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updateTicket.jsp?mave=command=update">
                                                    Sửa
                                                </a>&nbsp;| &nbsp;
                                                <a style="color: #ff66cc;font-weight:  bold;"  onclick="return confirm('Bạn chắc chắn muốn xóa thông tin này!')" href="/QUANLYBANVEMAYBAY/ManageTicketServlet?mave=&command=delete">
                                                    Xóa
                                                </a>
                                            </center>
                                        </td>
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
                                       
                                        
                                        
                                         <td style="border: 2px solid #dcdcdc;vertical-align: top;" >
                                            <center>
                                                <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updateTicket.jsp?mave=command=update">
                                                    Sửa
                                                </a>&nbsp;| &nbsp;
                                                <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/ManageTicketServlet?mave=&command=delete">
                                                    Xóa
                                                </a>
                                            </center>
                                        </td>
                                        </tr>
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>