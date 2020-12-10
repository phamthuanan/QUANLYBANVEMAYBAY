<%-- 
    Document   : ManagePromotion
    Created on : Oct 19, 2020, 10:51:30 PM
    Author     : Pham An
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="model.Promotion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PromotionDao"%>
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
    <link rel="stylesheet" href="./css/formInsert.css">
    <link rel="stylesheet" href="./css/managePromotion.css">
    <title>Quản lý khuyến mãi</title>
  </head>
  <body>
       <%
           PromotionDao pDao = new PromotionDao();
            ArrayList<Promotion> list = pDao.getListPromotion();
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
                          <li class="breadcrumb-item active" aria-current="page">Quản lý khuyến mãi</li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                   <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchPromotion">
                                    <form action="/QUANLYBANVEMAYBAY/ManagePromotionServlet" method="Post">
                                        <button class="btn btn-success" id="btnInsert" type="button"><i class="fas fa-plus-circle"></i> Thêm mới</button>
                                        <input type="text" placeholder="Tìm mã khuyến mãi" name="inputPromotion" class="inputPromotion">
                                        <button type="submit" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="/QUANLYBANVEMAYBAY/ManagePromotionServlet" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm thông tin khuyến mãi</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                <div class="col-5 form-group">
                                  <label for="temkm">Tên khuyến mãi</label>
                                    <input type="text" name="temkm" class="idPromotion form-control " placeholder="Nhập tên khuyến mãi" required>
                                    <div class="invalid-feedback">
                                        Vui lòng nhập tên khuyến mãi
                                    </div>
                                </div>
                                <div class="col-3 form-group">
                                    <label for="ngaybd">Ngày bắt đầu</label>
                                    <input type="date" name="ngaybd" class="dateStart form-control inputdate" required>
                                    
                                    <div class="invalid-feedback">
                                        Vui lòng chọn ngày bắt đầu
                                    </div>
                                </div>
                                <div class="col-3 form-group">
                                    <label for="ngaykt">Ngày kết thúc</label>
                                    <input type="date" name="ngaykt" class="dateFinish form-control inputdate" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn ngày kết thúc
                                    </div>
                                </div>
                                <div class="col-1 form-group">
                                    <label for="phantramkm">Giảm giá</label>
                                    <input type="number" name="phantramkm" class="discount form-control" min="1" max="100" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn phần trăm giảm giá
                                    </div>
                                </div>           
                                
                                <div class="col-1"><button value="insert" name="command" class="btn btn-primary btnsubmitInsertPromoiton" type="submit">Thêm</button></div>
                        </div>
                        
                    </form> 
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        
                                        <th>Mã khuyến mãi</th>
                                        <th>Tên khuyến mãi</th>
                                        <th>Giảm giá</th>
                                        <th>Ngày bắt đầu</th>
                                        <th>Ngày kết thúc</th>
                                        <th>Tình trạng</th>
                                        <th>Thao tác</th>
                                    </tr>
                                     <%
                                            
                                            for(Promotion p : list){
                                        %>
                                    <tr>
<!--                                        <form action="#" method="POST">
                                            <td><input type="checkbox" name="" id=""></td>-->
                                        <td><%=p.getMakm()%></td>
                                        <td>
                                            <%=p.getTenkm()%>
<!--                                            <div class="inforRow">Khách háng VIP</div>
                                            <input type="text" value="Khách hàng VIP" id="inputrow" class="inputrow form-control" name="namePromotion">-->
                                        </td>
                                        <td>
                                            <%=p.getPhantramkm()%>
<!--                                            <div class="inforRow">30%</div>
                                            <input type="number" value="30" id="inputrow" class="inputrow form-control" name="discount" min="1" max="100">-->
                                        </td>
                                        <td>
                                            <%=p.getNgaybd()%>
<!--                                            <div class="inforRow">01/10/2020</div>
                                            <input type="date" name="dateStart" class="dateStart inputrow form-control" value="2020-10-01" >-->
                                        </td>
                                        <td>
                                            <%=p.getNgaykt()%>
<!--                                            <div class="inforRow">30/10/2020</div>
                                            <input type="date" name="dateFinish" class="dateFinish inputrow form-control" value="2020-10-30" >-->
                                        </td>
                                        <% 
                                            SimpleDateFormat formatter= new SimpleDateFormat("MM/dd/yyyy");
                                            Date date = new Date(System.currentTimeMillis());
                                           
                                            if(p.getNgaykt().compareTo(date) < 0){
                                                
                                                    
                                        %>
                                        <td>Hết hạn</td>
                                        <% }else{ %>
                                        <td>Còn hạn</td>
                                        <%}%>
                                         <td style="border: 2px solid #dcdcdc;vertical-align: top;" >
                                                <center>
                                                    <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updatePromotion.jsp?mamb=<%=p.getMakm()%>&command=update">
                                                        Sửa
                                                    </a>&nbsp;| &nbsp;
                                                    <a style="color: #ff66cc;font-weight:  bold;" onclick="return confirm('Bạn chắc chắn muốn xóa thông tin này!')" href="/QUANLYBANVEMAYBAY/ManagePromotionServlet?makm=<%=p.getMakm()%>&command=delete">
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
    <script src="./js/insertFormInsert.js"></script>
    <script src="./js/controlValidatateFormInsert.js"></script>
    <script src="./js/controlTableEditInfor.js"></script>
    <script src="./js/defautdate.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

