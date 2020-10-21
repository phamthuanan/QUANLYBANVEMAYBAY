<%-- 
    Document   : index
    Created on : Oct 19, 2020, 2:01:19 PM
    Author     : Duong Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js"  lang="en">
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
        <title>Travel</title>

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

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!-- main-menu Start -->
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
                                <div class="collapse navbar-collapse">		  
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="login.jsp">Đăng nhập</a></li>
                                        <li><a href="signup.jsp">Đăng ký</a></li>
                                        <li>
                                            <button style="font-size: 15px;width: 120px" class="book-btn">
                                                <img style="margin-top: -5px" src="assets/images/home/phone-call.png" alt=""/>  0987654321
                                            </button>
                                        </li><!--/.project-btn--> 
                                    </ul>
                                </div><!-- /.navbar-collapse -->
                            </div><!-- /.main-menu-->
                        </div><!-- /.col-->
                    </div><!-- /.row -->
                    <div class="home-border"></div><!-- /.home-border-->
                </div><!-- /.container-->
            </div><!-- /.header-area -->

        </header><!-- /.top-area-->
        <!-- main-menu End -->


        <!--about-us start -->
        <section id="home" class="about-us">
            <div class="container">
                <div class="about-us-content">
                    <div class="row">
                        <div class="col-sm-12">
                            <div >
                                <div class="about-us-txt">
                                    <h2>
                                        Khám phá vẻ đẹp của thế giới tươi đẹp
                                    </h2>
                                </div><!--/.about-us-txt-->
                            </div><!--/.single-about-us-->
                        </div><!--/.col--> 
                    </div><!--/.row-->
                </div><!--/.about-us-content-->
            </div><!--/.container-->
        </section><!--/.about-us-->
        <!--about-us end -->

        <!--travel-box start-->
        <section  class="travel-box">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="single-travel-boxes">
                            <div id="desc-tabs" class="desc-tabs"> 
                                <div class="tab-content">

                                    <div role="tabpanel" class="tab-pane fade in active" id="flights">
                                        <div class="tab-para">
                                            <div class="trip-circle">
                                                <div class="single-trip-circle">
                                                    <input type="radio" id="radio01" name="radio">
                                                    <label for="radio01">
                                                        <span class="round-boarder">
                                                            <span class="round-boarder1"></span>
                                                        </span>Khứ hồi
                                                    </label>
                                                </div><!--/.single-trip-circle-->
                                                <div class="single-trip-circle">
                                                    <input type="radio" id="radio02" name="radio">
                                                    <label for="radio02">
                                                        <span class="round-boarder">
                                                            <span class="round-boarder1"></span>
                                                        </span>Một chiều
                                                    </label>
                                                </div><!--/.single-trip-circle-->
                                            </div><!--/.trip-circle-->
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4 col-sm-12">
                                                    <div class="single-tab-select-box">

                                                        <h2>Nơi đi</h2>

                                                        <div class="travel-select-icon">
                                                            <select class="form-control ">

                                                                <option value="default">Nhập nơi đi của bạn</option><!-- /.option-->

                                                                <option value="turkey">turkey</option><!-- /.option-->

                                                                <option value="russia">russia</option><!-- /.option-->
                                                                <option value="egept">egypt</option><!-- /.option-->

                                                            </select><!-- /.select-->
                                                        </div><!-- /.travel-select-icon -->
                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->

                                                <div class="col-lg-2 col-md-3 col-sm-4">
                                                    <div class="single-tab-select-box">
                                                        <h2>Ngày đi</h2>
                                                        <div class="travel-check-icon">
                                                            <form action="#">
                                                                <input type="text" name="departure" class="form-control" data-toggle="datepicker" placeholder="12 -01 - 2017 ">
                                                            </form>
                                                        </div><!-- /.travel-check-icon -->
                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->

                                                <div class="col-lg-2 col-md-3 col-sm-4">
                                                    <div class="single-tab-select-box">
                                                        <h2>Ngày về</h2>
                                                        <div class="travel-check-icon">
                                                            <form action="#">
                                                                <input type="text" name="return" class="form-control" data-toggle="datepicker" placeholder="22 -01 - 2017 ">
                                                            </form>
                                                        </div><!-- /.travel-check-icon -->
                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->

                                                <div class="col-lg-2 col-md-1 col-sm-4">
                                                    <div class="single-tab-select-box">
                                                        <h2>Người lớn</h2>
                                                        <div class="travel-select-icon">
                                                            <select class="form-control ">
                                                                <option value="default">1</option><!-- /.option-->
                                                                <option value="2">2</option><!-- /.option-->
                                                                <option value="3">3</option><!-- /.option-->
                                                                <option value="4">4</option><!-- /.option-->
                                                            </select><!-- /.select-->
                                                        </div><!-- /.travel-select-icon -->
                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->

                                                <div class="col-lg-2 col-md-1 col-sm-4">
                                                    <div class="single-tab-select-box">
                                                        <h2>Trẻ em</h2>
                                                        <div class="travel-select-icon">
                                                            <select class="form-control ">
                                                                <option value="default">0</option><!-- /.option-->
                                                                <option value="2">1</option><!-- /.option-->
                                                                <option value="3">2</option><!-- /.option-->
                                                                <option value="4">3</option><!-- /.option-->
                                                            </select><!-- /.select-->
                                                        </div><!-- /.travel-select-icon -->
                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->

                                            </div><!--/.row-->

                                            <div class="row">
                                                <div class="col-lg-4 col-md-4 col-sm-12">
                                                    <div class="single-tab-select-box">

                                                        <h2>Nơi đến</h2>

                                                        <div class="travel-select-icon">
                                                            <select class="form-control ">

                                                                <option value="default">Nhập nơi đến của bạn</option><!-- /.option-->

                                                                <option value="istambul">istambul</option><!-- /.option-->

                                                                <option value="mosko">mosko</option><!-- /.option-->
                                                                <option value="cairo">cairo</option><!-- /.option-->

                                                            </select><!-- /.select-->
                                                        </div><!-- /.travel-select-icon -->

                                                    </div><!--/.single-tab-select-box-->
                                                </div><!--/.col-->
                                                <div class="clo-sm-5">
                                                    <div class="about-btn pull-right">
                                                        <button class="about-view travel-btn" onclick="window.location.href='find_flight.jsp'">
                                                            Tìm kiếm	
                                                        </button><!--/.travel-btn-->
                                                    </div><!--/.about-btn-->
                                                </div><!--/.col-->

                                            </div><!--/.row-->

                                        </div>

                                    </div><!--/.tabpannel-->

                                </div><!--/.tab content-->
                            </div><!--/.desc-tabs-->
                        </div><!--/.single-travel-box-->
                    </div><!--/.col-->
                </div><!--/.row-->
            </div><!--/.container-->

        </section><!--/.travel-box-->
        <!--travel-box end-->

        <!--packages start-->
        <section id="pack" class="packages">
            <div class="container">
                <div class="gallary-header text-center">
                    <h2>
                        Khuyến Mãi
                    </h2>
                </div><!--/.gallery-header-->
                <div class="packages-content">
                    <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p1.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>italya</h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                            Mua ngay
                                        </button>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->
                        </div><!--/.col-->

                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p2.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>england </h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <div>
                                            <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                                Mua ngay
                                            </button>
                                        </div>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->

                        </div><!--/.col-->

                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p3.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>france</h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <div>
                                            <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                                Mua ngay
                                            </button>
                                        </div>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->

                        </div><!--/.col-->

                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p4.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>india</h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <div>
                                            <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                                Mua ngay
                                            </button>
                                        </div>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->

                        </div><!--/.col-->

                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p5.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>spain</h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <div>
                                            <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                                Mua ngay
                                            </button>
                                        </div>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->

                        </div><!--/.col-->

                        <div class="col-md-4 col-sm-6">
                            <div class="single-package-item">
                                <img src="assets/images/packages/p6.jpg" alt="package-place">
                                <div class="single-package-item-txt">
                                    <h3>thailand</h3>
                                    <div class="packages-para">
                                        <p>
                                            09-10-2020
                                        </p>
                                        <p>
                                            Từ Hồ Chí Minh
                                        </p>
                                    </div><!--/.packages-para-->
                                    <div class="about-btn">
                                        <div>
                                            <button style="float: left"  class="about-view packages-btn" onclick="window.location.href='find_flight.jsp'">
                                                Mua ngay
                                            </button>
                                        </div>
                                        <div style="padding-top: 7px" class="packages-para" ><p> &nbsp;&nbsp;&nbsp;&nbsp; Giá từ $1000</p> </div>
                                    </div><!--/.about-btn-->
                                </div><!--/.single-package-item-txt-->
                            </div><!--/.single-package-item-->

                        </div><!--/.col-->

                    </div><!--/.row-->
                </div><!--/.packages-content-->
            </div><!--/.container-->

        </section><!--/.packages-->
        <!--packages end-->

        <!--subscribe start-->
        <section id="subs" class="subscribe">
            <div class="container">
                <div class="subscribe-title text-center">
                    <h2>
                        Đăng ký Để Nhận Cập Nhật Thường Xuyên
                    </h2>
                    <p>
                        Đăng ký ngay. Chúng tôi sẽ gửi cho bạn Ưu đãi tốt nhất cho chuyến đi của bạn 
                    </p>
                </div>
                <form action="signup.jsp" method="post">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                            <div class="custom-input-group">
                                <input type="email" class="form-control" placeholder="Nhập Email của bạn">
                                <button type="submit" class="appsLand-btn subscribe-btn" >
                                    Đăng ký
                                </button>
                                <div class="clearfix"></div>
                                <i class="fa fa-envelope"></i>
                            </div>

                        </div>
                    </div>
                </form>
            </div>

        </section>
        <!--subscribe end-->

        <!-- footer-copyright start -->
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


    </body>

</html>
