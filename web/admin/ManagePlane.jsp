<%-- 
    Document   : ManagePlane
    Created on : Oct 19, 2020, 10:48:32 PM
    Author     : Pham An
--%>

<%@page import="model.Plane"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.PlaneDao"%>
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
    <link rel="stylesheet" href="./css/managePlane/managePlane.css">
    <title>Quản lý máy bay</title>
  </head>
  <body>
       <%
           PlaneDao pDao = new PlaneDao();
            ArrayList<Plane> list = pDao.getListPlane();
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
                          <li class="breadcrumb-item" aria-current="page">Quản lý máy bay</a></li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchPlane">
                                    <form action="/QUANLYBANVEMAYBAY/ManagePlaneServlet" method="Post">
                                        <button class="btn btn-success" id="btnInsert" type="button"><i class="fas fa-plus-circle"></i> Thêm mới</button>
                                        <input type="text" placeholder="Tìm máy bay" name="inputPlane" class="inputPlane">
                                        <button type="submit" name="command" value="search" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="/QUANLYBANVEMAYBAY/ManagePlaneServlet" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm thông tin máy bay</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                
                                <div class="col-3 form-group">
                                    <label for="temb">Tên máy bay</label>
                                    <input type="text" name="tenmb" class="namePlane form-control" placeholder="Nhập tên máy bay" required>
                                    <div class="invalid-feedback">
                                        Vui lòng nhập tên máy bay
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="hangmb">Hãng máy bay</label>
                                    <select name="hangmb"  class="airline custom-select" required>
                                        <option value="">Hãng máy bay</option>
                                        <option value="VietNameAirline">VietNameAirLine</option>
                                        <option value="VietJet">VietJet</option>
                                        <option value="BambooAirways">BambooAirways</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn hãng máy bay
                                    </div>
                                </div>            
                                <div class="col-1 form-group">
                                    <label for="soghe">Số ghế</label>
                                    <input type="number" name="soghe" class="numbersit form-control" min="50" max="200" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn số ghế
                                    </div>
                                </div>
                                <div class="col-1">
                                    <button value="insert" name="command" class="btn btn-primary btnsubmitInputplane" type="submit">Thêm</button>
                                </div>    
                        </div>
                    </form> 
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        
                                        <th>Mã máy bay</th>
                                        <th>Tên máy bay</th>
                                        <th>Hãng máy bay</th>
                                        <th>Số ghế</th>
                                        <th>Số ghế trống</th>
                                        <th>Tình trạng</th>
                                        <th>Thao tác</th>
                                    </tr>
                                    <%
                                            
                                            for(Plane p : list){
                                        %>
                                    <tr>
                                       
                                           
                                        <td><%=p.getMamb()%></td>
                                        <td>
                                             <%=p.getTenmb()%>
                                        </td>
                                        <td>
                                           <%=p.getHangmb()%>
                                        </td>
                                        <td>
                                             <%=p.getSoghe()%>
                                        </td>
                                        <td>
                                           <%=p.getSoghetrong()%>
                                        </td>
                                        
                                            <% if(p.getTinhtrang() == 1){ %>
                                                <td>
                                                Đang hoạt động
                                                </td>
                                             <%} else {%>
                                             <td>
                                                Dừng hoạt động
                                             </td>
                                             <%}%>
                                            
                                                
                                            
                                            
                                        <td style="border: 2px solid #dcdcdc;vertical-align: top;" >
                                                <center>
                                                    <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updatePlane.jsp?mamb=<%=p.getMamb()%>&command=update">
                                                        Sửa
                                                    </a>&nbsp;| &nbsp;
                                                    <a style="color: #ff66cc;font-weight:  bold;" onclick="return confirm('Bạn chắc chắn muốn xóa thông tin này!')" href="/QUANLYBANVEMAYBAY/ManagePlaneServlet?mamb=<%=p.getMamb()%>&command=delete">
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
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

