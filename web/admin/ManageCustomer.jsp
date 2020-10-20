<%-- 
    Document   : ManageCustomer
    Created on : Oct 19, 2020, 10:13:50 PM
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
    <link rel="stylesheet" href="./css/ManegeCustomer/ManegeCustomer.css">
    <title>Quản lý thông tin khách hàng</title>
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
                          <li class="breadcrumb-item" aria-current="page"><a href="#">Quản lý khách hàng</a></li>
                          <li class="breadcrumb-item active" aria-current="page">Quản lý thông tin khách hàng</li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                     <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchCustomer">
                                    <form action="#" method="Post">
                                        <input type="text" placeholder="Tìm khách hàng" name="inforCustomer" class="inforCustomer">
                                        <button type="submit" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        <th><input type="checkbox"></th>
                                        <th>Mã khách hàng</th>
                                        <th>Tên khách hàng</th>
                                        <th>Số điện thoại</th>
                                        <th>Email</th>
                                        <th>Địa chỉ</th>
                                        <th>Tên tài khoản</th>
                                        <th><i class="fas fa-cog"></i></th>
                                    </tr>
                                    <tr>
                                        <form action="#" method="POST">
                                            <td><input type="checkbox" name="" id=""></td>
                                            <td>KH001</td>
                                            <td>
                                                <div class="inforRow">Nguyễn Văn A</div>
                                                <input type="text"  value="Nguyễn Văn A" id="inputrow" class="inputrow form-control" name="nameCustomer">
                                            </td>
                                            <td>
                                                <div class="inforRow">0123456789</div>
                                                <input type="text"  value="0123456789" id="inputrow" class="inputrow form-control" name="phoneNumber">
                                            </td>
                                            <td>
                                                <div class="inforRow">anguyen123</div>
                                                <input type="email"  value="anhguyen@gmail.com" id="inputrow" class="inputrow form-control" name="email">
                                            </td>
                                            <td>
                                                <div class="inforRow">Hồ Chí Minh</div>
                                                <input type="text"  value="HỒ CHÍ MINH" id="inputrow" class="inputrow form-control" name="Address">
                                            </td>
                                            <td>
                                                <div class="inforRow">anguyen123</div>
                                                <input type="text"  value="anguyen123" id="inputrow" class="inputrow form-control" name="username">
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
                                                        <button class="dropdown-item" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa thông tin khách hàng này!')">Xóa</button>
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
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script src="./js/controlTableEditInfor.js"></script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
