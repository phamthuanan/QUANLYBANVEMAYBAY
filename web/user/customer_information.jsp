<%-- 
    Document   : customer_information
    Created on : Oct 19, 2020, 1:59:08 PM
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
        <title>Thông tin khách hàng</title>

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
                        <div class="step__indicator--active" >
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
                                            <button type="submit" class="book-btn" style="width: 90%; margin-top: 20px" >Tìm kiếm</button>
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
                    <div class="el-form__header">
                        Thông tin người đặt vé
                        <div class="ml-auto text-sm-right ">
                            (
                            <a href="signup.jsp" class="text-underline" > Đăng ký </a>
                            để hưởng ưu đãi )
                        </div>
                    </div>
                    <div>
                        <div class="form-row">
                            <div class="form-group col-md-8 col-lg-5">
                                <label style="margin-bottom: 0" for="fullName" >Họ và tên</label>
                                <input type="text" class="form-control" id="fullName" placeholder="Họ và tên" maxlength="250" >
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-md-4 col-lg-2 " >
                                <label style="margin-bottom: 0" for="gender" >Giới tính</label>
                                <select id="gender" class="form-control" >
                                    <option value="6" selected="selected">Nam</option>
                                    <option value="7">Nữ</option>
                                </select>
                                <span class="text-danger">
                                </span>
                            </div>
                            
                            <div class="form-group col-md-6 col-lg-5">
                                <label style="margin-bottom: 0" for="fullName" >Số điện thoại</label>
                                <input type="text" class="form-control" id="numberphone" >
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-md-6 " >
                                <label style="margin-bottom: 0" for="fullName" >Email</label>
                                <input type="text" class="form-control" id="email" placeholder="Email" >
                                <span class="text-danger">
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="el-form__header">
                        Thông tin khách hàng
                    </div>
                    <div>
                        <div style="padding-bottom: 30px" >
                            <div class="el-form__sub-header">
                                <i class="el-icon--user"></i>
                                Hành khách 1 ( Người Lớn )
                            </div>
                            <div class="form-group col-md-8 col-lg-5">
                                <label style="margin-bottom: 0" for="fullName2" >Họ và tên</label>
                                <input type="text" class="form-control" id="fullName2" placeholder="Họ và tên" maxlength="250" >
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-md-4 col-lg-2 ">
                                <label style="margin-bottom: 0" for="gender" >Giới tính</label>
                                <select id="gender2" class="form-control" >
                                    <option value="1" selected="selected">Nam</option>
                                    <option value="2">Nữ</option>
                                </select>
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-lg-5 " >
                                <label style="margin-bottom: 0" >Hành lý - &#8203;​Vietjet Air</label>
                                <select class="form-control ">
                                    <option value="" data-price="0" selected="selected">Chiều đi 0Kg ký gửi - 0đ</option>
                                    <option value="object:9" label="15Kg (171,000đ)">15Kg (171,000đ)</option>
                                    <option value="object:10" label="20Kg (193,000đ)">20Kg (193,000đ)</option>
                                    <option value="object:11" label="25Kg (259,000đ)">25Kg (259,000đ)</option>
                                    <option value="object:12" label="30Kg (369,000đ)">30Kg (369,000đ)</option>
                                    <option value="object:13" label="35Kg (424,000đ)">35Kg (424,000đ)</option>
                                    <option value="object:14" label="40Kg (479,000đ)">40Kg (479,000đ)</option>
                                </select><!-- end ngIf: detail.OutBound.AirlineCode == 'VN' -->
                                <input type="hidden" name="Passengers[0].DepartBaggagePrice" value="0">
                                <input type="hidden" name="Passengers[0].DepartureBaggage" value="23">
                            </div>
                        </div>

                        <div style="padding-bottom: 30px">
                            <div class="el-form__sub-header">
                                <i class="el-icon--user"></i>
                                Hành khách 2 ( Người Lớn )
                            </div>
                            <div class="form-group col-md-8 col-lg-5">
                                <label style="margin-bottom: 0" for="fullName2" >Họ và tên</label>
                                <input type="text" class="form-control" id="fullName3" placeholder="Họ và tên" maxlength="250" >
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-md-4 col-lg-2 ">
                                <label style="margin-bottom: 0" for="gender" >Giới tính</label>
                                <select id="gender3" class="form-control" >
                                    <option value="1" selected="selected">Nam</option>
                                    <option value="2">Nữ</option>
                                </select>
                                <span class="text-danger">
                                </span>
                            </div>
                            <div class="form-group col-lg-5 " >
                                <label style="margin-bottom: 0" >Hành lý - &#8203;​Vietjet Air</label>
                                <select class="form-control ">
                                    <option value="" data-price="0" selected="selected">Chiều đi 0Kg ký gửi - 0đ</option>
                                    <option value="object:9" label="15Kg (171,000đ)">15Kg (171,000đ)</option>
                                    <option value="object:10" label="20Kg (193,000đ)">20Kg (193,000đ)</option>
                                    <option value="object:11" label="25Kg (259,000đ)">25Kg (259,000đ)</option>
                                    <option value="object:12" label="30Kg (369,000đ)">30Kg (369,000đ)</option>
                                    <option value="object:13" label="35Kg (424,000đ)">35Kg (424,000đ)</option>
                                    <option value="object:14" label="40Kg (479,000đ)">40Kg (479,000đ)</option>
                                </select><!-- end ngIf: detail.OutBound.AirlineCode == 'VN' -->
                                <input type="hidden" name="Passengers[0].DepartBaggagePrice" value="0">
                                <input type="hidden" name="Passengers[0].DepartureBaggage" value="23">
                            </div>
                        </div>
                        <span>
                            <em>Mỗi hành khách được mang theo tối đa 1 Kiện 10Kg hành lý xách tay</em>
                        </span>
                        <div class="d-flex" style="padding-bottom: 30px">
                            <button style="width: 200px" type="button" class="book-btn" onclick="window.location.href = 'checkout_page.jsp'">Tiếp tục thanh toán</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <div class="ticket-summary">
                        <div class="ticket-summary__header">
                            <div class="two-side">
                                <div class="two-side--left bold">
                                    Tổng cộng
                                </div>
                                <div class="two-side--right">
                                    <b>1,140,000</b><br> VNĐ
                                </div>
                            </div>
                            <div class="text-right small">
                                (Giá đã bao gồm thuế và phụ phí)
                            </div>

                        </div>
                        <div class="ticket-summary__content">
                            <div class="two-side">
                                <div class="two-side--left">
                                    Tóm tắt
                                </div>
                                <div class="two-side--right">
                                    <i class="ml-auto el-icon--arrow-down"></i>
                                </div>
                            </div>
                            <div style="margin-top: 10px">
                                <i class="el-icon--flight"></i>
                                <b >Chiều đi</b>
                            </div>
                            <b>Hà Nội (HAN)</b> đến <b>Hồ Chí Minh (SGN)</b><br>
                            <b>VietNam Airlines - VN7221</b><br>
                            20:30 - 22:45, Thứ 5 - 15/10/2020<br>
                            <p></p>

                            <b>Người lớn:</b><br>
                            <div class="two-side">
                                <div class="two-side--left">
                                    1 x 1,140,000 =
                                </div>
                                <div class="two-side--right">
                                    <b>
                                        1,140,000đ
                                    </b>
                                </div>
                            </div>
                            <b>Hành lý:</b>
                            <div class="two-side ">
                                <div class="two-side--left">
                                    0Kg =
                                </div>
                                <div class="two-side--right">
                                    <b>
                                        0đ
                                    </b>
                                </div>
                            </div>
                            <div class="ticket-summary__delimiter">
                            </div>
                        </div>
                    </div>
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
