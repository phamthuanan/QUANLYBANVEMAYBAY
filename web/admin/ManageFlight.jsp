<%-- 
    Document   : ManageFlight
    Created on : Oct 19, 2020, 10:37:51 PM
    Author     : Pham An
--%>

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
                                    <form action="#" method="Post">
                                        <button class="btn btn-success" id="btnInsert" type="button"><i class="fas fa-plus-circle"></i> Thêm mới</button>
                                        <input type="text" placeholder="Tìm chuyến bay" name="inputFlight" class="inputFlight">
                                        <button type="submit" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="#" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm chuyến bay</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                <div class="col-4 form-group">
                                  <label for="id_plane">Hãng máy bay</label>
                                  <select name="airline" id="airline" class="airline custom-select" required>
                                    <option value="">Hãng máy bay</option>
                                    <option value="VietNameAirLine">VietNameAirLine</option>
                                  </select>
                                  <div class="invalid-feedback">
                                    Vui lòng chọn hãng máy bay
                                  </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Từ</label>
                                    <select name="airline" id="placeFrom" class="placeFrom custom-select" required>
                                        <option value="">Chọn nơi đi</option>
                                        <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn nơi đi
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Đến</label>
                                    <select name="airline" id="placeTo" class="placeTo custom-select" required>
                                        <option value="">Chọn nơi đến</option>
                                        <option value="Hà Nội">Hà Nội</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn nơi đến
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Sân bay đi</label>
                                    <select name="airline" id="airportFrom" class="airportFrom custom-select" required>
                                        <option value="">Chọn sân bay đi</option>
                                        <option value="Sân bay Tân Sơn Nhất">Sân bay Tân Sơn Nhất</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn sân bay đi
                                    </div> 
                                </div> 
                                <div class="col-4 form-group">
                                    <label for="name_plane">Sân bay đến</label>
                                    <select name="airline" id="airportTo" class="airportTo custom-select" required>
                                        <option value="">Chọn sân bay đến</option>
                                        <option value="Sân bay Nội Bài">Sân bay Nội Bài</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn sân bay đến
                                    </div> 
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Ngày bay</label>
                                    <input type="date" class="datedepart form-control inputdate" id="datedepart" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn ngày bay
                                    </div> 
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Giờ bay</label>
                                    <input type="time" name="hourdepart" id="hourdepart" class=" hourdepart form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn giờ bay
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Giờ hạ cánh</label>
                                    <input type="time" name="hourend" id="hourend" class=" hourend form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn giờ hạ cánh
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="name_plane">Giá(VNĐ)</label>
                                    <input type="text" name="price" id="price" class="price form-control" required>
                                    <div class="invalid-feedback">
                                        Vui lòng nhập giá
                                    </div>
                                </div>          
                                <div class="col-1">
                                    <button class="btn btn-primary btnsubmitInputplane" type="submit">Thêm</button>
                                </div>    
                        </div>
                    </form> 
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        <th><input type="checkbox"></th>
                                        <th>Mã chuyến bay</th>
                                        <th>Hãng máy bay</th>
                                        <th>Sân bay đi</th>
                                        <th>Sân bay đến</th>
                                        <th>Từ</th>
                                        <th>Đến</th>
                                        <th>Ngày bay</th>
                                        <th>Giờ cất cánh</th>
                                        <th>Giờ hạ cánh</th>
                                        <th><i class="fas fa-cog"></i></th>
                                        </tr>
                                    <tr>
                                        <form action="#" method="POST">
                                            <td><input type="checkbox" name="" id=""></td>
                                        <td>CB001</td>
                                        <td>
                                            <div class="inforRow">Viet Nam Airline</div>
                                            <select name="airline" id="airline" class="airline custom-select selectOptionRow inputrow" >
                                                <option value="Viet Nam Airline" selected>Viet Nam Airline</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">Tân Sơn Nhất</div>
                                            <select name="airport" id="airport" class="airport custom-select selectOptionRow inputrow" >
                                                <option value="Tân Sơn Nhất" selected>Tân Sơn Nhất</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">Đà Nẵng</div>
                                            <select name="airport" id="airport" class="airport custom-select selectOptionRow inputrow" >
                                                <option value="Đà Nẵng" selected>Đà Nẵng</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">Hồ Chí Minh</div>
                                            <select name="placeFrom" id="placeFrom" class="placeFrom custom-select selectOptionRow inputrow" >
                                                <option value="Hồ Chí Minh" selected>Hồ Chí Minh</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">Đà Nẵng</div>
                                            <select name="placeTo" id="placeTo" class="placeTo custom-select selectOptionRow inputrow" >
                                                <option value="Đà Nẵng" selected>Đà Nẵng</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">01/10/2020</div>
                                            <input type="date" name="datedeport" class="datedeport inputrow form-control" value="2020-10-01" >
                                        </td>
                                        <td>
                                            <div class="inforRow">9:00</div>
                                            <input type="time" name="timedeport" class="timedeport inputrow form-control" value="09:00" >
                                        </td>
                                        <td>
                                            <div class="inforRow">11:00</div>
                                            <input type="time" name="timedeport" class="timedeport inputrow form-control" value="11:00" >
                                        </td>
                                        <td>
                                            <div class="btnSubmitSave" id="btnSubmitSave">
                                                    <button type="submit" class="btnSave btn btn-primary" id="btnSave">Lưu</button>
                                                </div>
                                                </form>
                                                <div class="dropdown dropdownMenuRowTable">
                                                    <div class="dropdown-toggle" id="dropdownManageDetailTicket" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        <i class="fas fa-cog"></i>
                                                    </div>
                                                    <div class="dropdown-menu menuConfig" aria-labelledby="dropdownManageDetailTicket">
                                                                                             
                                                    <button class="dropdown-item btnEdit" type="button">Sửa</button>
                                                    <form action="#" method="POST">
                                                        <button class="dropdown-item" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa chuyến bay này!')">Xóa</button>
                                                    </form>
                                                </div>
                                    
                                            </td>
                                        
                                    </tr>
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
