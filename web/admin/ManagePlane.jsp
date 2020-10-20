<%-- 
    Document   : ManagePlane
    Created on : Oct 19, 2020, 10:48:32 PM
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
    <link rel="stylesheet" href="./css/managePlane/managePlane.css">
    <title>Quản lý máy bay</title>
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
                                    <form action="#" method="Post">
                                        <button class="btn btn-success" id="btnInsert" type="button"><i class="fas fa-plus-circle"></i> Thêm mới</button>
                                        <input type="text" placeholder="Tìm hãng máy bay" name="inputPlane" class="inputPlane">
                                        <button type="submit" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="#" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm thông tin máy bay</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                <div class="col-3 form-group">
                                  <label for="id_plane">Mã máy bay</label>
                                  <input type="text" id="id_plane" class="idPlane form-control" placeholder="Nhập mã máy bay" required>
                                  <div class="invalid-feedback">
                                    Vui lòng nhập mã máy bay
                                  </div>
                                </div>
                                <div class="col-3 form-group">
                                    <label for="name_plane">Tên máy bay</label>
                                    <input type="text" id="name_plane" class="namePlane form-control" placeholder="Nhập tên máy bay" required>
                                    <div class="invalid-feedback">
                                        Vui lòng nhập tên máy bay
                                    </div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="airline">Hãng máy bay</label>
                                    <select name="airline" id="airline" class="airline custom-select" required>
                                        <option value="">Hãng máy bay</option>
                                        <option value="VietNameAirLine">VietNameAirLine</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn hãng máy bay
                                    </div>
                                </div>            
                                <div class="col-1 form-group">
                                    <label for="numbersit">Số ghế</label>
                                    <input type="number" id="numbersit" class="numbersit form-control" min="50" max="200" required>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn số ghế
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
                                        <th>Mã máy bay</th>
                                        <th>Tên máy bay</th>
                                        <th>Hãng máy bay</th>
                                        <th>Số ghế</th>
                                        <th>Số ghế trống</th>
                                        <th>Tình trạng</th>
                                        <th><i class="fas fa-cog"></i></th>
                                    </tr>
                                    <tr>
                                        <form action="#" method="POST">
                                            <td><input type="checkbox" name="" id=""></td>
                                        <td>MB001</td>
                                        <td>
                                            <div class="inforRow">VN2000</div>
                                            <select name=namePlane id="namePlane" class="namePlane custom-select selectOptionRow inputrow" >
                                                <option value="VN2000" selected>VN2000</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">VN2000</div>
                                            <select name="airline" id="airline" class="airline custom-select selectOptionRow inputrow" >
                                                <option value="Viet Nam Airline" selected>Viet Nam Airline</option>
                                            </select>
                                        </td>
                                        <td>
                                            <div class="inforRow">100</div>
                                            <input type="number" id="numbersit" class="numbersit form-control inputrow" min="50" max="200" value="100">
                                        </td>
                                        <td>
                                            <div class="inforRow">50</div>
                                            <input type="number" id="numberempty" class="numberempty form-control inputrow" min="50" max="200" value="50">
                                        </td>
                                        <td>
                                            <div class="inforRow">Đang hoạt động</div>
                                            <select name="state" id="state" class="state custom-select selectOptionRow inputrow" >
                                                <option value="Đang hoạt động" selected>Đang hoạt động</option>
                                            </select>
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
                                                        <button class="dropdown-item" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa máy bay này!')">Xóa</button>
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

