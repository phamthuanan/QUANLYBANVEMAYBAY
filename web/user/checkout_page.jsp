<%-- 
    Document   : checkout_page
    Created on : Oct 19, 2020, 1:57:23 PM
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
        <title>Thanh toán</title>

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
                        <div class="step__indicator--active " >
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
                                            <button class="book-btn" type="submit" style="width: 90%; margin-top: 20px" >Tìm kiếm</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <section class="container" >
            <div class="row">
                <div class="col-lg-4">
                    <div class="payment__header">
                        Chọn hình thức thanh toán
                    </div>
                    <div class="payment__method">
                        <i class="el-icon--credit-card"></i>
                        Chuyển khoản ngân hàng
                    </div>
                    <div class="payment__method" >
                        <i class="el-icon--building"></i>
                        Thanh toán tại văn phòng ViVu Travel
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="payment__header">
                        Thông tin chi tiết <b class="text-danger">(Phí tiện ích theo quy định)</b>
                    </div>
                    <div >
                        <p>
                            <b>Thanh toán trực tiếp tại quầy giao dịch ngân hàng</b>
                        </p>
                        <div style="padding: 0 10px 20px; display: flex; margin-top: 10px">
                            <div style="flex: 0 0 16.66667%;width: 16.66667%; padding:0 10px">
                                <img src="assets/images/home/vietcombankLogo.png" alt=""/>
                            </div>
                            <div style="flex: 0 0 83.33333%;width: 83.33333%;">
                                <b>Ngân hàng TMCP Ngoại Thương Việt Nam - Vietcombank (VNĐ)</b>
                                <div style="margin-top: 10px">
                                    <div class="bank">
                                        <b>
                                            Tên tài khoản
                                        </b>
                                    </div>
                                    <div class="nd-bank">
                                        Công ty Cổ phần Vivu Travel
                                    </div>
                                    <div class="bank">
                                        <b>
                                            Số tài khoản
                                        </b>
                                    </div>
                                    <div class="nd-bank">
                                        0011 0035 39780
                                    </div>
                                    <div class="bank">
                                        <b>
                                            Chi Nhánh
                                        </b>
                                    </div>
                                    <div class="nd-bank">
                                        Sở Giao Dịch Hà Nội
                                    </div>
                                    <div class="bank">
                                        <b>
                                            Số tiền
                                        </b>
                                    </div>
                                    <div class="nd-bank">
                                        <span class="semi-bold">1,250,000 VND</span>
                                    </div>
                                    <div class="bank">
                                        <b>
                                            Nội dung
                                        </b>
                                    </div>
                                    <div class="nd-bank">
                                        <span class="semi-bold">Thanh toán cho dh: 2010285088</span>
                                    </div>
                                    <div class="bank">
                                        <b>
                                            Điểm giao dịch
                                        </b>
                                        <p></p>
                                    </div>
                                    <div class="nd-bank">
                                        <a href="#" class="semi-bold"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div >
                        <p>Sau khi đặt hàng thành công, Quý khách vui lòng qua văn phòng Vivu Travel để thanh toán và nhận vé.</p>
                        <ul style="padding: 10px 40px">
                            <li>
                                <b>Thời gian giao dịch:</b>
                                Từ 8h sáng tới 20h30 hàng ngày
                            </li>
                            <li>
                                <b>Phí giao dịch:</b>
                                Miễn phí
                                <br>
                            </li>
                        </ul>
                        <div class="payment__delimiter"></div>
                        <p>Vui lòng chọn đúng văn phòng gần địa chỉ nhà của Quý khách</p>
                        <div>
                            <p>
                                <b>VĂN PHÒNG VIVU TRAVEL TẠI HÀ NỘI</b>
                            </p>
                            <label class="mb-2">
                                <input type="radio" class="radiobox__input" name="PaymentAtOffice" checked="checked" value="1">
                                <span class="radiobox__label bold">
                                    Địa chỉ 1: Tầng 3, 333 Trần Khát Chân, Hai Bà Trưng, Hà Nội
                                </span>
                            </label>
                            <label class="mb-2">
                                <input type="radio" class="radiobox__input" name="PaymentAtOffice" checked="checked" value="2">
                                <span class="radiobox__label bold">
                                    Địa chỉ 2 : Số 12 Ngô Gia Tự, Đức Giang, Long Biên, Hà Nội
                                </span>
                            </label>
                            <p>
                                <b>VĂN PHÒNG VIVU TRAVEL TẠI TP.HỒ CHÍ MINH</b>
                            </p>
                            <label>
                                <input type="radio" class="radiobox__input" name="PaymentAtOffice" checked="checked" value="3">
                                <span class="radiobox__label bold">
                                    Địa chỉ: : Phường Linh Trung, Quận Thủ Đức, Thành phố Hồ Chí Minh
                                </span>
                            </label>
                        </div>
                        <img style="margin-top: 20px;" src="assets/images/home/address.png" alt=""/>
                    </div>
                    <div class="d-flex">
                        <button type="submit" style="margin-top: 30px" class="book-btn" onclick="window.location.href='notification.jsp'">Tiếp tục</button>
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


    </body>

</html>