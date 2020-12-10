<%-- 
    Document   : Statistical
    Created on : Oct 19, 2020, 10:58:52 PM
    Author     : TRAN TIEN ANH
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.StatisticalDao"%>
<%@page import="model.Statistical"%>

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
    <link rel="stylesheet" href="./css/Statistical.css">
    <title>THONG KE</title>
  </head>
  <body>
       <%
           StatisticalDao sDao = new StatisticalDao();
            ArrayList<Statistical> list = sDao.getListCustomerTicket();
            ArrayList<Statistical> listds = sDao.getListWithCustomer();
            ArrayList<Statistical> listkh = sDao.getListCustomerTicket();
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
                          <li class="breadcrumb-item active" aria-current="page"><a href="Statistical.jsp">Thống kê</a></li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchStatistical">
                                    <form action="/QUANLYBANVEMAYBAY/ManageStatisticalServlet" method="POST">
                                        <div class="form-row">
                                            <div class="col-5 form-group">
                                                <label for="statistical">Thống kê</label>
                                                <select name="statistical" id="statistical" class="statistical form-control">
                                                    <option value="0">Chọn thống kê</option>
                                                    <option value="1">Thống kê doanh số bán vé</option>
                                                    <option value="2">Thống kê danh sách khách hàng mua vé</option>
                                                </select>
                                            </div>
                                            <div class="col-3 form-group">
                                                <label for="TypeStatistical">Loại thống kê</label>
                                                <select name="TypeStatistical" id="TypeStatistical" class="TypeStatistical form-control">
                                                    <option value="Tháng" selected >Tháng</option>
                                                    <option value="Qúy">Qúy</option>
                                                    <option value="Năm">Năm</option>
                                                </select>
                                            </div>
                                            <div class="col-2 form-group" id="divMonth">
                                                <label for="month">Tháng</label>
                                                <select name="month" id="month" class="month form-control">
                                                    <option value="1" selected>1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                    <option value="9">9</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select>
                                            </div>
                                            <div class="col-2 form-group divQuarter" id="divQuarter">
                                                <label for="quarter">Qúy</label>
                                                <select name="quarter" id="quarter" class="quarter form-control">
                                                    <option value="1" selected>1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                </select>
                                            </div>
                                            <div class="col-1 form-group">
                                                <label for="year">Năm</label>
                                                <input type="number" min="1900" name="year" max="2099" step="1" value="2020" class="year form-control"/>
                                            </div>
                                            <div class="col-1">
                                                <button type="submit" name="command" value="search" class="btnSubmitStatistical btn btn-danger">Xem</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-12">
                                   
                                <table class="tableDetail revenue">
                                   
                                    <tr>
                                        <th>Mã hóa đơn</th>
                                        <th>Mã khách hàng</th>
                                        <th>Số lượng</th>
                                        <th>Giá(VNĐ)</th>
                                        <th>Hình thức TT</th>
                                        <th>Ngày hóa đơn</th>
                                    </tr>
                                     <%
                                            
                                                 for(Statistical s : list){
                                     %> 
                                    <tr>
                                         <td><%=s.getMahd()%></td>
                                        <td><%=s.getMakh()%></td>
                                        <td><%=s.getSoluongve()%></td>
                                        <td><%=(int)s.getDongia()%></td>
                                        <td><%=s.getHinhthucthanhtoan()%></td>
                                        <td><%=s.getNgayhd()%></td>
                                    </tr>
                                   
                                    <%}%>
                                     <tr class="colSum">
                                        <td colspan="1" >Tổng  :  <%=(int)sDao.getSumByCustomer()%></td>
                               
                                    </tr>
                                </table>
                                  
                          
                        </div>
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="./js/controlSearchStatistical.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

