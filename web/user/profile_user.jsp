<%-- 
    Document   : ProfileUser
    Created on : Oct 29, 2020, 4:40:48 PM
    Author     : Duong Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- META DATA -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
        <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet" />

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet" />

        <!-- TITLE OF SITE -->
        <title>Thông tin cá nhân</title>

        <!-- favicon img -->
        <link rel="shortcut icon" type="image/icon" href="assets/logo/favicon.png"/>

        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

        <!--animate.css-->
        <link rel="stylesheet" href="assets/css/animate.css" />

        <!--hover.css-->
        <link rel="stylesheet" href="assets/css/hover-min.css">

        <!--datepicker.css-->
        <link rel="stylesheet"  href="assets/css/datepicker.css" >

        <!--owl.carousel.css-->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>

        <!-- range css-->
        <link rel="stylesheet" href="assets/css/jquery-ui.min.css" />

        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

        <!-- bootsnav -->
        <link rel="stylesheet" href="assets/css/bootsnav.css"/>

        <!--style.css-->
        <link rel="stylesheet" href="assets/css/style.css" />

        <!--responsive.css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <!--Icon-->
        <script src="https://kit.fontawesome.com/6ea5e95864.js" crossorigin="anonymous"></script>
        <!-- CSS Components-->
        <link rel="stylesheet" href="../admin/css/header.css">
        <link rel="stylesheet" href="../admin/css/sidebar.css">
        <link rel="stylesheet" href="../admin/css/layout.css">
        <link rel="stylesheet" href="../admin/css/footer.css">
        <link rel="stylesheet" href="../admin/css/tableInfor.css">
        <link rel="stylesheet" href="../admin/css/breadcrumb.css">
        <link rel="stylesheet" href="../admin/css/ManegeCustomer/ManegeCustomer.css">
    </head>
    <body>
        <header class="top-area">
            <div class="header-area">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="logo">
                                <a href="index.jsp">
                                    ViVu<span>Travel</span>
                                </a>
                            </div><!-- /.logo-->
                        </div><!-- /.col-->
                        <div class="col-sm-10">
                            <div class="main-menu">

                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <i class="fa fa-bars"></i>
                                    </button><!-- / button-->
                                </div><!-- /.navbar-header-->
                                <div class="collapse navbar-collapse" style="float: right; margin: 10px 0">		  
                                    <img src="../admin/images/IMG.jpg" alt="avatar" class='avatar-account'>
                                    <div class="dropdown" style="display: initial">
                                        <a class="dropdown-toggle nameaccount" style="font-size: 15px;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Phạm Thuận An
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="#">Đăng xuất <i class="fas fa-sign-out-alt"></i></a>
                                        </div>
                                    </div>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.main-menu-->
                        </div><!-- /.col-->
                    </div><!-- /.row -->
                    <div class="home-border"></div><!-- /.home-border-->
                </div><!-- /.container-->
            </div><!-- /.header-area -->

        </header><!-- /.top-area-->

        <section >
            <div class="step__hero" style="height: 50px"></div>
            <div class="row" id="accordion" style="font-size: 15px">
                <div class="col-lg-3">
                    <div class="user-panel">
                        <div class="avatar-user">
                            <img src="./images/IMG.jpg" alt="avavter" class="avavatar-user">
                        </div>
                        <div class="infor-account">
                            <span class="name-user">Phạm Thuận An</span>
                            <span class="state-user"><i class="fas fa-circle"></i> Online</span>
                        </div>
                    </div>
                    <div class="payment__header">
                        Danh mục
                    </div>
                    <div class="payment__method" data-toggle="collapse" href="#collapseFive" role="button" aria-expanded="true" aria-controls="collapseFive">
                        <i class="fas fa-user"></i>
                        Vé đang chờ
                    </div>
                    <div class="payment__method" data-toggle="collapse" href="#collapseSix" role="button" aria-expanded="false" aria-controls="collapseSix">
                        <i class="fas fa-plane"></i>
                        Lịch sử
                    </div>
                    <div class="payment__method" data-toggle="collapse" href="#collapseSeven" role="button" aria-expanded="false" aria-controls="collapseSeven">
                        <i class="fas fa-tag"></i>
                        Thông tin cá nhân
                    </div>
                </div>

                <div class="col-lg-9">
                    <div class="container collapse show" id="collapseFive" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchCustomer" style="background-color: #e5eff3; border-radius: 4px;">
                                    <form action="#" method="Post">
                                        <input type="text" style="width: 80%;border: 1px solid #ccc; border-radius: 4px;" placeholder="Tìm chuyến bay" name="inforCustomer" class="inforCustomer">
                                        <button type="submit" class="book-btn"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div row>
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
                                        <th>Hủy</th>
                                    </tr>
                                    <tr>
                                    <form action="#" method="POST">
                                        <td><input type="checkbox" name="" id=""></td>
                                        <td>CB001</td>
                                        <td>
                                            <div class="inforRow">Viet Nam Airline</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">Tân Sơn Nhất</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">Đà Nẵng</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">Hồ Chí Minh</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">Đà Nẵng</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">01/10/2020</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">9:00</div>

                                        </td>
                                        <td>
                                            <div class="inforRow">11:00</div>

                                        </td>
                                        <td>
                                            <button class="book-btn" style="width: 40px;height: 30px" type="button">Hủy</button>                                              
                                        </td>

                                        </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="container collapse" id="collapseSix" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="row">
                            <div class="col-12">
                                <div class="searchCustomer" style="background-color: #e5eff3; border-radius: 4px;">
                                    <form action="#" method="Post">
                                        <input type="text" style="width: 80%;border: 1px solid #ccc; border-radius: 4px;" placeholder="Tìm chuyến bay" name="inforCustomer" class="inforCustomer">
                                        <button type="submit" class="book-btn"><i class="fas fa-search"></i> Tìm kiếm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row " >
                            <div class="col-12">
                                <table class="tableDetail">
                                    <tr>
                                        <th>Mã chuyến bay</th>
                                        <th>Hãng máy bay</th>
                                        <th>Sân bay đi</th>
                                        <th>Sân bay đến</th>
                                        <th>Từ</th>
                                        <th>Đến</th>
                                        <th>Ngày bay</th>
                                        <th>Giờ cất cánh</th>
                                        <th>Giờ hạ cánh</th>
                                    </tr>
                                    <tr>
                                    <form action="#" method="POST">
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
                                        </tr>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="container collapse" id="collapseSeven" aria-labelledby="headingOne" data-parent="#accordion">
                        <div class="row">
                            <div class="col-9" style="margin: auto">
                                <form class="auth__form" method="post" action="#">
                                    <div class="form-group no-wrap">
                                        <label for="hoten" >Họ tên</label>
                                        <div class="auth__form--inline">  
                                            <input type="text" required="" class="form-control" id="hoten" placeholder="Họ tên" name="Name">
                                        </div>
                                    </div>

                                    <div class="form-group no-wrap">
                                        <label for="sdt" >Số điện thoại</label>
                                        <div class="auth__form--inline">
                                            <input type="text" required="" class="form-control" id="sdt" placeholder="Số điện thoại" name="NumberPhone">
                                        </div>
                                    </div>

                                    <div class="form-group no-wrap">
                                        <label for="email" >Địa chỉ email</label>
                                        <div class="auth__form--inline">
                                            <input type="text" required="" class="form-control" id="email" placeholder="Email" name="UsernameOrEmail">
                                        </div>
                                    </div>

                                    <div class="form-group no-wrap">
                                        <label for="password">Mật khẩu</label>
                                        <div class="auth__form--inline">
                                            <input type="password" required="" class="form-control" id="password" placeholder="Mật khẩu" name="Password">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div style="padding-left: 20px;">
                                            <button type="submit" name="Save" style="width: 150px" class="book-btn" >Cập nhật thông tin</button>
                                        </div>

                                    </div>
                                    <p>&#8203;</p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>

        <div class="mb-5"></div>
        <footer  class="footer-copyright">
            <div class="container">
                <div class="footer-content">
                    <div class="row">

                        <div class="col-sm-3">
                            <div class="single-footer-item">
                                <div class="footer-logo">
                                    <a href="index.jsp">
                                        ViVu<span>Travel</span>
                                    </a>
                                    <p>
                                        Công ty du lịch tốt nhất
                                    </p>
                                </div>
                            </div><!--/.single-footer-item-->
                        </div><!--/.col-->

                        <div class="col-sm-3">
                            <div class="single-footer-item">
                                <h2>Trang liên kết</h2>
                                <div class="single-footer-txt">
                                    <p><a href="login.jsp">Đăng nhập</a></p>
                                    <p><a href="signup.jsp">Đăng ký</a></p>
                                </div><!--/.single-footer-txt-->
                            </div><!--/.single-footer-item-->

                        </div><!--/.col-->

                        <div class="col-sm-3">
                            <div class="single-footer-item">
                                <h2>Điểm đến phổ biến</h2>
                                <div class="single-footer-txt">
                                    <p><a href="find_flight.jsp">china</a></p>
                                    <p><a href="find_flight.jsp">venezuela</a></p>
                                    <p><a href="find_flight.jsp">brazil</a></p>
                                    <p><a href="find_flight.jsp">australia</a></p>
                                    <p><a href="find_flight.jsp">london</a></p>
                                </div><!--/.single-footer-txt-->
                            </div><!--/.single-footer-item-->
                        </div><!--/.col-->

                        <div class="col-sm-3">
                            <div class="single-footer-item text-center">
                                <h2 class="text-left">Liên hệ</h2>
                                <div class="single-footer-txt text-left">
                                    <p>+1 (300) 1234 6543</p>
                                    <p class="foot-email"><a href="#">vivutravel@gmail.com</a></p>
                                    <p>Phường Linh Trung, Quận Thủ Đức</p>
                                    <p>Thành phố Hồ Chí Minh, Việt Nam</p>
                                </div><!--/.single-footer-txt-->
                            </div><!--/.single-footer-item-->
                        </div><!--/.col-->

                    </div><!--/.row-->

                </div><!--/.footer-content-->
                <hr>
                <div class="foot-icons ">
                    <ul class="footer-social-links list-inline list-unstyled">
                        <li><a href="#" target="_blank" class="foot-icon-bg-1"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" target="_blank" class="foot-icon-bg-2"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank" class="foot-icon-bg-3"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                    <p>&copy; 2020 <a href="#">VivuTravel</a>.com</p>

                </div><!--/.foot-icons-->
                <div id="scroll-Top">
                    <i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
                </div><!--/.scroll-Top-->
            </div><!-- /.container-->

        </footer><!-- /.footer-copyright-->
        <!-- footer-copyright end -->

        <script src="assets/js/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->

        <!--modernizr.min.js-->
        <script  src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


        <!--bootstrap.min.js-->
        <script  src="assets/js/bootstrap.min.js"></script>

        <!-- bootsnav js -->
        <script src="assets/js/bootsnav.js"></script>

        <!-- jquery.filterizr.min.js -->
        <script src="assets/js/jquery.filterizr.min.js"></script>

        <script  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

        <!--jquery-ui.min.js-->
        <script src="assets/js/jquery-ui.min.js"></script>

        <!-- counter js -->
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>

        <!--owl.carousel.js-->
        <script  src="assets/js/owl.carousel.min.js"></script>

        <!-- jquery.sticky.js -->
        <script src="assets/js/jquery.sticky.js"></script>

        <!--datepicker.js-->
        <script  src="assets/js/datepicker.js"></script>

        <!--Custom JS-->
        <script src="assets/js/custom.js"></script>

        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

    </body>
</html>