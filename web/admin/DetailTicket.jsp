<%-- 
    Document   : DetailTicket
    Created on : Oct 19, 2020, 10:44:30 PM
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
    <link rel="stylesheet" href="./css/manage_ticket/DetailTicket.css">
    <title>Chi tiết vé</title>
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
                            <li class="breadcrumb-item active" aria-current="page"><a href="ManageTicket.jsp">Quản lý vé</a></li>
                            <li class="breadcrumb-item" aria-current="page">Thông tin chi tiết vé</li>
                        </ol>
                    </nav>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="container">
                        <div class="ticket">
                            <div class="headerticket">
                                <i class="fas fa-plane-departure"></i>
                                <i class="fas fa-plane"></i>
                                <i class="fas fa-plane-arrival"></i>
                            </div>
                            <div class="footerticket">
                            </div>
                            <div class="row bodyticket">
                                <div class="col-4 detailContentBody">
                                    <div class="componentItem">
                                        <span class="titleNameItem">Hãng máy bay</span>
                                        <span class="contentItem">Viet Nam Airlines</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem">Họ và tên</span>
                                        <span class="contentItem">Phạm Thuận An</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem">Nơi đi</span>
                                        <span class="contentItem">Hồ Chí Minh</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem">Nơi đến</span>
                                        <span class="contentItem">Hà Nội</span>
                                    </div>
                                </div>
                                <div class="col-4 detailContentBody">
                                    <div class="componentItem">
                                        <span class="titleNameItem">Ngày bay</span>
                                        <span class="contentItem">1/10/2020</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem ">Giờ bay</span>
                                        <span class="contentItem hourtakeoff">9:00</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem">Giờ hạ cánh</span>
                                        <span class="contentItem">14:00</span>
                                    </div>
                                </div>
                                <div class="col-4 detailContentBody">
                                    <div class="componentItem">
                                        <span class="titleNameItem">Chuyến bay</span>
                                        <span class="contentItem">MD2F54</span>
                                    </div>
                                    <div class="componentItem">
                                        <span class="titleNameItem">Số ghế</span>
                                        <span class="contentItem numberSit">AD01</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                        
                    <div class="btn-manageTicket">
                        <button class='printicket btn btn-info' type="button">In vé</button>
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

