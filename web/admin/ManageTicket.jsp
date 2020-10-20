<%-- 
    Document   : ManageTicket
    Created on : Oct 19, 2020, 10:02:16 PM
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
    <link rel="stylesheet" href="./css/manage_ticket/formSeach.css">
    <link rel="stylesheet" href="./css/tableInfor.css">
    <title>Quản lý vé</title>
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
                          <li class="breadcrumb-item active" aria-current="page">Quản lý vé</li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                 <div class="formsearchticket">
                                    <form action="#" method="POST">
                                        <input type="text" placeholder="Tên khách hàng" name="nameCustomer" id="nameCustomer" class="nameCustomer" >
                                        <input type="date" name="dateTakeOff" id="dateTakeOff" class="dateTackeOff">
                                        <select name="placeFrom" id="placeFrom" class="placeFrom">
                                            <option value="">Nơi đi</option>
                                            <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                        </select>
                                        <select name="placeTo" id="placeTo" class="placeTo">
                                            <option value="">Nơi đến</option>
                                            <option value="Hà Nội">Hà Nội</option>
                                        </select>
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
                                        <th>Mã vé</th>
                                        <th>Tên khách hàng</th>
                                        <th>Ngày đi</th>
                                        <th>Từ</th>
                                        <th>Đến</th>
                                        <th>Hãng máy bay</th>
                                        <th>Số ghế</th>
                                        <th>Trạng thái</th>
                                        <th><i class="fas fa-cog"></i></th>
                                        </tr>
                                        <tr>
                                        <td><input type="checkbox" name="" id=""></td>
                                        <td>00001</td>
                                        <td>Nguyễn Văn A</td>
                                        <td>1/10/2020</td>
                                        <td>Hồ Chí Minh</td>
                                        <td>Đà Nẵng</td>
                                        <td>Viet Nam Airline</td>
                                        <td>A20</td>
                                        <td>Giữ chỗ</td>
                                        <td>
                                            <div class="dropdown">
                                                <div class="dropdown-toggle" id="dropdownManageDetailTicket" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-cog"></i>
                                                </div>
                                                <div class="dropdown-menu menuConfig" aria-labelledby="dropdownManageDetailTicket">
                                                  <a class="dropdown-item" href="DetailTicket.jsp">Xem</a>
                                                  
                                                </div>
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
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>