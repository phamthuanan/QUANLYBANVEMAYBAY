<%-- 
    Document   : SideBar
    Created on : Oct 19, 2020, 9:38:10 PM
    Author     : Pham An
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <body>
        <aside class="main-sidebar">
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="avatar-user">
                            <img src="./images/IMG.jpg" alt="avavter" class="avavatar-user">
                        </div>
                        <div class="infor-account">
                            <span class="name-user">Phạm Thuận An</span>
                            <span class='state-user'><i class="fas fa-circle"></i> Online</span>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="menu-sidebar">
                        <li class="title-menu">DANH MỤC</li>
                        <li class="submenubar">
                            <div>
                                <i class="fas fa-ticket-alt"></i>
                                <a href="ManageTicket.jsp" class="submenubar">QUẢN LÝ VÉ</a>
                            </div>
                        </li>
                        <li class="submenubar">
                            <div data-toggle="collapse" href="#collapseCustomner" role="button" aria-expanded="false" aria-controls="collapseCustomner">
                                <i class="fas fa-user"></i>
                                <a href="#" >QUẢN LÝ KHÁCH HÀNG </a>
                                <i class="fas fa-chevron-down"></i>
                            </div>
                            <ul class="collapse listitemmanageCustomer" id="collapseCustomner">
                               <a href="ManageCustomer.jsp"><li><i class="far fa-circle"></i> Quản lý thông tin khách hàng</li></a>
                               <a href="ManageAccount.jsp"><li><i class="far fa-circle"></i> Quản lý tài khoản</li></a>
                            </ul>
                        </li>
                        <li class="submenubar">
                            <div>
                                <i class="fas fa-plane"></i>
                                <a href="ManageFlight.jsp">QUẢN LÝ CHUYẾN BAY</span>
                            </div>
                        </li>
                        <li class="submenubar">
                            <div>
                                <i class="fas fa-copyright"></i>
                                <a href="ManagePlane.jsp">QUẢN LÝ MÁY BAY</a>
                            </div>
                        </li>
                        <li class="submenubar">
                            <div>
                                <i class="fas fa-tag"></i>
                                <a href="ManagePromotion.jsp">QUẢN LÝ KHUYẾN MÃI</a>
                            </div>
                        </li>
                        <li class="submenubar">
                            <div>
                                <i class="far fa-edit"></i>
                                <a href="Statistical.jsp">THỐNG KÊ</a>
                            </div>
                        </li>
                    </ul>
                </section>
            </aside>
    </body>
</html>
