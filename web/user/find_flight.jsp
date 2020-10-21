<%-- 
    Document   : find_flight
    Created on : Oct 19, 2020, 1:59:53 PM
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
        <title>Tìm chuyến bay</title>

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

        <section>
            <div class="step__hero">
                <div class="container" style="margin-top: 150px;padding-bottom: 40px">
                    <div class="col-md-3 col-sm-12">
                        <div class="step__indicator--active">
                            <span>1. Lựa chọn chuyến bay</span>                     
                        </div><!--/.single-tab-select-box-->
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <div class="step__indicator--active" style="opacity: 0.7;">
                            <span>2. Nhập thông tin khách hàng</span>                     
                        </div><!--/.single-tab-select-box-->
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <div class="step__indicator--active " style="opacity: 0.7;">
                            <span>3. Xác nhận thanh toán</span>                     
                        </div><!--/.single-tab-select-box-->
                    </div>
                    <div class="col-md-3 col-sm-12">
                        <div class="step__indicator--active change_step" data-toggle="modal" data-target="#change">
                            <span>4. Thay đổi hành trình</span>                     
                        </div><!--/.single-tab-select-box-->
                    </div>

                    <div class="container modal fade" id="change" role="dialog" >
                        <div class="modal-content" style="max-width: 500px;margin: auto; margin-top: 30px">
                            <div class="modal-header modal-header2">
                                <h3 class="modal-title">Thay đổi hàng trình</h3>
                                <button type="button" class="close" data-dismiss="modal">×</button>
                            </div>
                            <div class="modal-body">
                                <form action="find_flight.jsp" id="FindFlight" method="post">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Điểm đi
                                                </div>
                                                <div class="quick-book__value">
                                                    <select class="form-control ">
                                                        <option value="default">Nhập nơi đi của bạn</option><!-- /.option-->
                                                        <option value="turkey">turkey</option><!-- /.option-->
                                                        <option value="russia">russia</option><!-- /.option-->
                                                        <option value="egept">egypt</option><!-- /.option-->
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Điểm đến
                                                </div>
                                                <div class="quick-book__value">
                                                    <select class="form-control ">
                                                        <option value="default">Nhập nơi đến của bạn</option><!-- /.option-->
                                                        <option value="istambul">istambul</option><!-- /.option-->
                                                        <option value="mosko">mosko</option><!-- /.option-->
                                                        <option value="cairo">cairo</option><!-- /.option-->
                                                    </select><!-- /.select-->
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Ngày đi
                                                </div>
                                                <div class="quick-book__value">       
                                                    <input type="text" name="departure" class="form-control" data-toggle="datepicker" placeholder="12 -01 - 2017 ">
                                                </div><!-- /.travel-check-icon -->
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Ngày về
                                                </div>
                                                <div class="quick-book__value">       
                                                    <input type="text" name="departure" class="form-control" data-toggle="datepicker" placeholder="12 -01 - 2017 ">
                                                </div><!-- /.travel-check-icon -->
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Người lớn
                                                </div>
                                                <div class="quick-book__value">
                                                    <select class="form-control ">
                                                        <option value="default">1</option><!-- /.option-->
                                                        <option value="2">2</option><!-- /.option-->
                                                        <option value="3">3</option><!-- /.option-->
                                                        <option value="4">4</option><!-- /.option-->
                                                    </select><!-- /.select-->
                                                </div><!-- /.travel-select-icon -->
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="quick-book__block">
                                                <div class="quick-book__label">
                                                    Trẻ em
                                                </div>
                                                <div class="quick-book__value">
                                                    <select class="form-control ">
                                                        <option value="default">0</option><!-- /.option-->
                                                        <option value="2">1</option><!-- /.option-->
                                                        <option value="3">2</option><!-- /.option-->
                                                        <option value="4">3</option><!-- /.option-->
                                                    </select><!-- /.select-->
                                                </div><!-- /.travel-select-icon -->
                                            </div>
                                        </div>
                                        <div style="text-align: center">
                                            <button type="submit" class="book-btn" style="width: 90%; margin-top: 20px">Tìm kiếm</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <div class="container">
            <div class="row">
                <div class="col-xs-9 col-lg-9">
                    <div class="flight">
                        <div class="ticket-list__header">
                            <span class="label">
                                CHIỀU ĐI
                            </span>
                            <span>
                                <span class="d-inline-block">
                                    <b>Hà Nội</b>
                                </span>
                                <i class="el-icon el-icon--flight-to"></i>
                                <span class="d-inline-block">
                                    <b>Hồ Chí Minh</b>
                                </span>
                            </span>
                        </div>
                    </div>
                    <div class="ticket-list">
                        <div class="ticket-list__item">
                            <span class="good-price">Giá tốt</span>
                            <div class="text-center">
                                <img class="ticket__logo" src="assets/images/home/airlineLogo.png" alt=""/>
                                <div >
                                    <small>VJ179</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div >
                                    <b>06:00</b>
                                </div>
                                <div>
                                    <small>HAN</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div class="arrow">
                                    <div style="margin-bottom: .25rem !important;">
                                        02 tiếng 10p
                                    </div>
                                    <div>
                                        Bay thẳng
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <div >
                                    <b>08:10</b>
                                </div>
                                <div>
                                    <small>SGN</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div>
                                    <b>399,000đ</b>
                                </div>
                            </div>
                            <div class="text-center">
                                <a data-toggle="collapse" data-target="#flight-detail-0">Chi tiết</a>
                            </div>
                            <div class="text-center" >
                                <div>
                                    <button class="book-btn" data-toggle="modal" data-target="#myModal">
                                        Chọn
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ticket-list">
                        <div class="ticket-list__item">
                            <span class="good-price">Giá tốt</span>
                            <div class="text-center">
                                <img class="ticket__logo" src="assets/images/home/vietjetLogo.png" alt=""/>
                                <div >
                                    <small>VJ179</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div >
                                    <b>06:00</b>
                                </div>
                                <div>
                                    <small>HAN</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div class="arrow">
                                    <div style="margin-bottom: .25rem !important;">
                                        02 tiếng 10p
                                    </div>
                                    <div>
                                        Bay thẳng
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <div >
                                    <b>08:10</b>
                                </div>
                                <div>
                                    <small>SGN</small>
                                </div>
                            </div>
                            <div class="text-center">
                                <div>
                                    <b>399,000đ</b>
                                </div>
                            </div>
                            <div class="text-center">
                                <a data-toggle="collapse" data-target="#flight-detail-0">Chi tiết</a>
                            </div>
                            <div class="text-center">
                                <div>
                                    <button class="book-btn" data-toggle="modal" data-target="#myModal">
                                        Chọn
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container modal fade" id="myModal" role="dialog" >
                        <div class="modal-content" style="margin: auto; margin-top: 30px">

                            <div class="modal-header modal-header2">
                                <h3 class="modal-title">Thông tin chuyến bay</h3>
                            </div>
                            <div class="modal-body container">
                                <div class="ticket-confirm__header ">
                                    <b>Chiều đi</b>
                                    Thứ 2, 19 tháng 10 năm 2020
                                </div>
                                <div >
                                    <div class="row" style="display: flex">
                                        <div class="col-3 text-center">
                                            <div class=" mb-2 text-center">
                                                <img class="ticket-confirm__logo" src="assets/images/home/subscribe-banner.jpg" alt="">
                                                <div>QH297</div>
                                            </div>
                                        </div>
                                        <div class="col-2 text-center">
                                            <div class="row">
                                                <div class="col-5">
                                                    <b >20:30</b>
                                                </div>
                                                <div class="col-7 col-sm-12 mb-flight">
                                                    Hà Nội (HAN)
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-2 text-center">
                                            <div class="row">
                                                <div class="col-5 col-sm-12">
                                                    <b >22:40</b>
                                                </div>
                                                <div class=" col-sm-12 ">
                                                    Hồ Chí Minh (SGN)
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-2 text-center ">
                                            <div class="row">
                                                <div class="col-5 col-sm-12">
                                                    <b >02 tiếng 10p</b>
                                                </div>
                                                <div class="col-sm-12">
                                                    <span >Bay thẳng</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-3 text-center">
                                            <button class="book-btn" data-dismiss="modal">Thay đổi</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal-footer modal-footer2" >
                                <div style="display: flex;">
                                    <div class="col">
                                        <div style="color: #006790;">
                                            1,231,000 VND / khách
                                        </div>
                                        <small >
                                            đã bao gồm thuế phí
                                        </small>
                                    </div>
                                    <div class="col" style="text-align: right">
                                        <b style="color: #006790;">
                                            Tổng cộng: 1,231,000 VND
                                        </b><br>
                                        <small >
                                            đã bao gồm thuế phí
                                        </small>
                                    </div>
                                    <div class=" d-flex">
                                        <button type="button" class="book-btn" data-dismiss="modal" onclick="window.location.href='customer_information.jsp'">Đặt vé</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="ticket-list__view-more">
                        <button class="book-btn" style="width: 220px">
                            Xem thêm chuyến bay
                        </button>
                    </div>
                </div>
                <div class="col-xs-3">
                    <section class="ticket-filter">
                        <div style="padding: 15px 0">
                            <i class="el-icon-settings"></i>
                            <span class="ml-auto">
                                Xóa bộ lọc
                            </span>
                        </div>
                        <div class="ticket-filter__block">
                            <div class="ticket-filter__block-header" data-toggle="collapse" data-target="#loaigia" aria-expanded="true">
                                <span class="bold">
                                    Hiển thị giá
                                </span>
                                <i class="ml-auto el-icon--arrow-down"></i>
                            </div>

                            <div class="ticket-filter__block-content" id="loaigia">
                                <label class="ticket-filter__option">
                                    <input type="radio" class="radiobox__input" name="price-options" id="filter_price_1">
                                    <label for="filter_price_2" class="radiobox__label" style="display: inline;">
                                        Giá chưa có thuế phí
                                    </label>

                                </label>

                                <label class="ticket-filter__option">
                                    <input type="radio" class="radiobox__input" name="price-options" id="filter_price_2">
                                    <label for="filter_price_2" class="radiobox__label" style="display: inline;">
                                        Giá gồm thuế phí cho 1 người lớn
                                    </label>
                                </label>

                                <label class="ticket-filter__option">
                                    <input type="radio" class="radiobox__input" name="price-options" id="filter_price_3">
                                    <label for="filter_price_3" class="radiobox__label">
                                        Tổng giá
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="ticket-filter__block ticket-filter__block--group">
                            <div class="ticket-filter__block-header" data-toggle="collapse" aria-expanded="true" data-target="#noidungcard">
                                <span class="bold group-header">
                                    <i class="el-icon--flight"></i>
                                    CHIỀU ĐI
                                </span>
                                <i class="ml-auto el-icon--arrow-down"></i>
                            </div>
                            <div id="noidungcard">
                                <div class="ticket-filter__block">
                                    <div class="ticket-filter__block-header" data-toggle="collapse" aria-expanded="true" data-target="#gia" >
                                        <span class="bold">
                                            Theo Giá (ĐVT: Triệu đồng)
                                        </span>
                                    </div>
                                    <div class="ticket-filter__block-content" id="gia">
                                        <div id="slider-range"></div>
                                        <div class="row ticket-filter__price">
                                            <div class="col-6">
                                                <label class="ticket-filter__price--label">Từ</label>
                                                <input type="number" class="ticket-filter__price--min">
                                            </div>
                                            <div class="col-6">
                                                <label class="ticket-filter__price--label">Đến</label>
                                                <input type="number" class="ticket-filter__price--min">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ticket-filter__block">
                                    <div class="ticket-filter__block-header" >
                                        <span class="bold">
                                            Thời gian khởi hành
                                        </span>
                                    </div>
                                    <div class="row ticket-filter__block-content" style="margin-left: 0; margin-right: 0; display: flex;">
                                        <div class="col-3">
                                            <div class="ticket-filter__start-time" >
                                                <i class="el-icon--time el-icon--sun-rise"></i>
                                                <br>
                                                00-06
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="ticket-filter__start-time" >
                                                <i class="el-icon--time el-icon--sun"></i>
                                                <br>
                                                06-12
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="ticket-filter__start-time" >
                                                <i class="el-icon--time el-icon--sun-rise2"></i>
                                                <br>
                                                12-18
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="ticket-filter__start-time" >
                                                <i class="el-icon--time el-icon--moon"></i>
                                                <br>
                                                18-24
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ticket-filter__block">
                                    <div class="ticket-filter__block-header" data-toggle="collapse" aria-expanded="true" data-target="#hang">
                                        <span class="bold">
                                            Hãng hàng không
                                        </span>
                                    </div>
                                    <div class="row ticket-filter__block-content" style="margin-left: auto" id="hang">
                                        <label class="ticket-filter__option">
                                            <input type="checkbox" class="checkbox__input" id="filter_vn_outbound" value="VN">
                                            <label for="filter_vn_outbound" class="checkbox__label">
                                                Vietnam Airlines
                                            </label>
                                        </label>
                                        <label class="ticket-filter__option">
                                            <input type="checkbox" class="checkbox__input" id="filter_vj_outbound" value="VJ">
                                            <label for="filter_vj_outbound" class="checkbox__label">
                                                Vietjet Air
                                            </label>
                                        </label>
                                        <label class="ticket-filter__option">
                                            <input type="checkbox" class="checkbox__input" id="filter_bl_outbound" value="BL">
                                            <label for="filter_bl_outbound" class="checkbox__label">
                                                Jetstar
                                            </label>
                                        </label>
                                        <label class="ticket-filter__option">
                                            <input type="checkbox" class="checkbox__input" id="filter_qh_outbound" value="QH">
                                            <label for="filter_qh_outbound" class="checkbox__label">
                                                Bamboo Airways
                                            </label>
                                        </label>
                                    </div>
                                </div>
                                <div style="text-align: center; padding-bottom: 30px">
                                    <button type="button" class="book-btn" onclick="window.location.href='#'">Tìm</button>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>

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
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>

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
