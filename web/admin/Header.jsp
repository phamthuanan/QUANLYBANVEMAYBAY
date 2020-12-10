<%-- 
    Document   : Header
    Created on : Oct 19, 2020, 9:53:47 PM
    Author     : Pham An
--%>

<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%
        Account admin = null;
        if(session.getAttribute("admin") != null){
            admin = (Account) session.getAttribute("admin");
        }
        %>
  </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light header-bar ">
                 <div class="col-sm-2">
                            <div class="logo">
                                <a href="/QUANLYBANVEMAYBAY/user/index.jsp">
                                   <span> <h2 style="color: white"> ViVuTravel</h2> </span>
                                </a>
                            </div><!-- /.logo-->
                        </div><!-- /.col-->
                <div class="account-admin ml-auto">
                    <img src="./images/IMG.jpg" alt="avatar" class='avatar-account'>
                    <div class="dropdown">
                        <a class="nav-link dropdown-toggle nameaccount" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             <%if(admin!=null){ %>
                                Chào <%=admin.getUsername()%> <br>
                                <% } %>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/QUANLYBANVEMAYBAY/LogoutAccountServlet">Đăng xuất <i class="fas fa-sign-out-alt"></i></a>
                        </div>
                      </div>
                </div>
              </nav>
        </header>
    </body>
</html>
