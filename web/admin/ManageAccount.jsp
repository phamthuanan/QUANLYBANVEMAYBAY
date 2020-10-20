<%-- 
    Document   : ManageAccount
    Created on : Oct 19, 2020, 10:26:47 PM
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
    <link rel="stylesheet" href="./css/breadcrumb.css">
    <link rel="stylesheet" href="./css/tableInfor.css">
    <link rel="stylesheet" href="./css/ManegeCustomer/ManegeCustomer.css">
    <link rel="stylesheet" href="./css/ManegeCustomer/manageAccount.css">
    <link rel="stylesheet" href="./css/formInsert.css">
    <title>Quản lý tài khoản</title>
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
                          <li class="breadcrumb-item active" aria-current="page">Quản lý tài khoản</li>
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
                                        <a href="#" class="btn btn-success" id="btnInsert"><i class="fas fa-plus-circle"></i> Thêm mới</a>
                                        <input type="text" placeholder="Tìm khách hàng" name="inforCustomer" class="inforCustomerAccount">
                                        <button type="submit" class="btnSubmit btn btn-danger"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form action="#" method="POST" class="formInsert needs-validation" id="formInsert" novalidate>
                            
                            <div class="form-row">
                                <div class="col-12 titleForm">
                                    <h3>Thêm tài khoản</h3>
                                    <div class="btnclose" id="btnclose"><i class="fas fa-angle-up"></i></div>
                                </div>
                                <div class="col-4 form-group">
                                    <label for="customer">Chọn khách hàng</label>
                                    <select name="customer" id="customer" class="customer custom-select" required>
                                        <option selected disabled value="">Chọn khách hàng</option>
                                        <option value="Nguyễn Văn A">Nguyễn Văn A</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Vui lòng chọn khách hàng
                                      </div>  
                                </div>        
                                <div class="col-1">
                                    <button class="btn btn-primary btnsubmitInputAccount" type="submit">Thêm</button>
                                </div>
                                <div class="col-7"></div>
                                <div class="col-12">
                                    <p class="alert alert-primary" role="alert">Tên tài khoản sẽ được tạo tự động từ số điện thoại của khách hàng. Mật khẩu sẽ cũng được tạo tự động từ hệ thống.</p>
                                </div>  
                        </div>
                    </form> 
                        <div class="row">
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                    <th><input type="checkbox"></th>
                                    <th>Tên tài khoản</th>
                                    <th>Tên khách hàng</th>
                                    <th>Quyền</th>
                                    <th><i class="fas fa-cog"></i></th>
                                    </tr>
                                    <tr>
                                        <form action="#" method="POST">
                                            <td><input type="checkbox" name="" id=""></td>
                                            <td>
                                                <div class="inforRow">anguyen123</div>
                                                <input type="text" value="anguyen123" id="inputrow" class="inputrow form-control" name="username">
                                            </td>
                                            <td>
                                                <div class="inforRow">Nguyễn Văn A</div>
                                                <input type="text" value="Nguyễn Văn A" id="inputrow" class="inputrow form-control" name="nameCustomer">
                                            </td>
                                            <td>
                                                <div class="inforRow">User</div>
                                                <input type="text" value="User" id="inputrow" class="inputrow form-control" name="typeAccount">
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
                                                    <form action="#" method="POST">
                                                        <button class="dropdown-item" type="submit">Reset mật khẩu</button>
                                                    </form>
                                                    
                                                    <button class="dropdown-item btnEdit" type="button">Sửa</button>
                                                    <form action="#" method="POST">
                                                        <button class="dropdown-item" type="submit" onclick="return confirm('Bạn chắc chắn muốn xóa tài khoản này!')">Xóa</button>
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
    <script src="./js/controlTableEditInfor.js"></script>
    <script src="./js/controlValidatateFormInsert.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>
