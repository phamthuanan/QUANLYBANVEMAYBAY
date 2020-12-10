<%-- 
    Document   : ManageFlight
    Created on : Oct 19, 2020, 10:37:51 PM
    Author     : Pham An
--%>

<%@page import="model.Flight"%>
<%@page import="java.util.ArrayList"%>
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
    <link rel="stylesheet" href="./css/tableInfor.css">
    <link rel="stylesheet" href="./css/breadcrumb.css">
    <link rel="stylesheet" href="./css/formInsert.css">
    <link rel="stylesheet" href="./css/manageFlight/manageFlight.css">
    <title>Quản lý chuyến bay</title>
  </head>
  <body>
       <%
           FlightDao fDao = new FlightDao();
            ArrayList<Flight> list = fDao.getListFlight();
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
                          <li class="breadcrumb-item" aria-current="page">Quản lý chuyến bay</li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchFlight">
                                    <form action="/QUANLYBANVEMAYBAY/ManageFlightServlet" method="POST">
                                        <button class="btn btn-success" id="btnInsert" type="button"><i class="fas fa-plus-circle"></i> Thêm mới</button>
                                        <input type="text" placeholder="Tìm chuyến bay" name="inputFlight" class="inputFlight">
                                        <button type="submit" name="command" value="search" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="/QUANLYBANVEMAYBAY/ManageFlightServlet" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm chuyến bay</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                <div class="col-4 form-group">
                                  <label for="hangmb">Hãng máy bay</label>
                                  <select name="hangmb" class="airline custom-select" required>
                                    <option value="">Hãng máy bay</option>
                                    <option value="VietNamAirline">VietNamAirline</option>
                                    <option value="Bamboo">Bamboo</option>
                                    <option value="VietJet">VietJet</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Vui lòng chọn hãng máy bay
                                  </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="noidi">Từ</label>
                                    <select name="noidi"  class="placeFrom custom-select" required>
                                        <option value="">Chọn nơi đi</option>
                                        <option value="Hà Nội">Hà Nội</option>
                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                        <option value="Huế">Huế</option>
                                        <option value="Khánh Hòa">Khánh Hòa</option>
                                         <option value="Phú Quốc">Phú Quốc</option>
                                        <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                        <option value="Hải Phòng">Hải Phòng</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn nơi đi
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="noiden">Đến</label>
                                    <select name="noiden"  class="placeTo custom-select" required>
                                        <option value="">Chọn nơi đến</option>
                                        <option value="Hà Nội">Hà Nội</option>
                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                        <option value="Huế">Huế</option>
                                        <option value="Khánh Hòa">Khánh Hòa</option>
                                         <option value="Phú Quốc">Phú Quốc</option>
                                        <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                        <option value="Hải Phòng">Hải Phòng</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn nơi đến
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="sanbay">Sân bay đi</label>
                                    <select name="sanbay"  class="airportFrom custom-select" required>
                                        <option value="">Chọn sân bay đi</option>
                                        <option value="Tân Sơn Nhất">Sân bay Tân Sơn Nhất</option>
                                        <option value="Nội Bài">Sân bay Nội Bài</option>
                                        <option value="Cát Bi">Sân bay Cát Bi</option>
                                        <option value="Cam Ranh">Sân bay Cam Ranh</option>
                                        <option value="Đà Nẵng">Sân bay Đà Nẵng</option>
                                        <option value="Phú Quốc">Sân bay Phú Quốc</option>
                                        <option value="Phú Bài">Sân bay Phú Bài</option>
                                      
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn sân bay đi
                                    </div> 
                                </div> 
                                <div class="col-4 form-group">
                                    <label for="sanbaydi">Sân bay đến</label>
                                    <select name="sanbaydi"  class="airportTo custom-select" required>
                                        <option value="">Chọn sân bay đến</option>
                                         <option value="Tân Sơn Nhất">Sân bay Tân Sơn Nhất</option>
                                        <option value="Nội Bài">Sân bay Nội Bài</option>
                                        <option value="Cát Bi">Sân bay Cát Bi</option>
                                        <option value="Cam Ranh">Sân bay Cam Ranh</option>
                                            <option value="Đà Nẵng">Sân bay Đà Nẵng</option>
                                        <option value="Phú Quốc">Sân bay Phú Quốc</option>
                                        <option value="Phú Bài">Sân bay Phú Bài</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn sân bay đến
                                    </div> 
                                </div>
                                <div class="col-4 form-group">
                                    <label for="ngaydi">Ngày bay</label>
                                    <input type="date" name="ngaydi" class="datedepart form-control inputdate"  required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn ngày bay
                                    </div> 
                                </div>
                                 <div class="col-4 form-group">
                                    <label for="giobay">Giờ bay</label>
                                    <input type="text" name="giobay"  class="hourdepart form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn giờ bay
                                    </div>
                                </div>
<!--                                <div class="col-4 form-group">
                                    <label for="giobay">Giờ bay</label>
                                    <input type="time" name="giobay" id="hourdepart" class=" hourdepart form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn giờ bay
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="giohacanh">Giờ hạ cánh</label>
                                    <input type="time" name="giohacanh" id="hourend" class=" hourend form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn giờ hạ cánh
                                    </div>
                                </div>-->
                                <div class="col-4 form-group">
                                    <label for="gia">Giá(VNĐ)</label>
                                    <input type="text" name="gia"  class="price form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng nhập giá
                                    </div>
                                </div>          
                                <div class="col-1">
                                    <button type="submit"  name="command" value="insert"  class="btn btn-primary btnsubmitInputplane" >Thêm</button>
                                </div>    
                        </div>
                    </form> 
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        
                                        <th>Mã CB</th>
                                        <th>Mã MB</th>
                                        <th>Mã SB</th>
                                        <th>Từ</th>
                                        <th>Đến</th>
                                        <th>Ngày đi</th>
                                        <th>Ngày đến</th>
                                        <th>Thời gian bay</th>
                                        <th>Giá</th>
                                        <th>Mã khuyến mãi</th>
                                        <th>Thao tác</th>
                                    </tr>
                                    <tr>
                                        <%
                                            
                                            for(Flight c : list){
                                        %>
                                        
                                        <td><%=c.getMacb()%></td>
                                        <td>
                                            <%=c.getMamb()%>
                                        </td>
                                        <td>
                                            <%=c.getMasb()%>
                                        </td>
                                        <td>
                                            <%=c.getDiemdi()%>
                                        </td>
                                        <td>
                                            <%=c.getDiemden()%>
                                        </td>
                                        <td>
                                            <%=c.getThoigiandi()%>
                                        </td>
                                        <td>
                                            <%=c.getThoigianden()%>
                                        </td>
                                        <td><%=c.getKhoangthoigian()%></td>
                                        <td>
                                            <%=c.getGia()%>
                                        </td>
                                        <td>
                                            <%=c.getMakm()%>
                                        </td>
                                        <td style="border: 2px solid #dcdcdc;vertical-align: top;">
                                                <center>
                                                    <a style="color: #ff66cc;font-weight:  bold;" href="/QUANLYBANVEMAYBAY/admin/updateFlight.jsp?macb=<%=c.getMacb()%>&command=update">
                                                        Sửa
                                                    </a>&nbsp;| &nbsp;
                                                    <a style="color: #ff66cc;font-weight:  bold;"  onclick="return confirm('Bạn chắc chắn muốn xóa thông tin này!')" href="/QUANLYBANVEMAYBAY/ManageFlightServlet?macb=<%=c.getMacb()%>&command=delete">
                                                        Xóa
                                                    </a>
                                                </center>
                                        </td>
                                        
                                    </tr>
                                     <%        
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="./js/insertFormInsert.js" ></script>
    <script src="./js/controlValidatateFormInsert.js"></script>
    <script src="./js/controlTableEditInfor.js"></script>
    <script src="./js/defautdate.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
