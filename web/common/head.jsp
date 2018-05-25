<%-- 
    Document   : head
    Created on : Nov 13, 2017, 11:41:43 PM
    Author     : Admin
--%>

<%@page import="Controller.Login.Common"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="Model.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <%!
        TheLoaiSachDAO theLoaiSachDAO = new TheLoaiSachDAO();
        SachTruyenThongDAO sachTruyenThongDAO = new SachTruyenThongDAO();
        ISachChuDAO iSachChuDAO = new ISachChuDAO();
        ISachNoiDAO iSachNoiDAO = new ISachNoiDAO();
        String UrlHomePage = "/TVDT_FI1/User/index.jsp";
        String Basic = "/TVDT_FI1";
    %>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="/TVDT_FI1/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/head.css">
        <script src="${pageContext.request.contextPath}/script/jquery-3.2.1.js"></script>
        <script src="/TVDT_FI1/bootstrap/js/bootstrap.min.js"></script>
        
        <link rel="stylesheet" type="text/css" href="<%=Basic%>/css/Detail.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<%=UrlHomePage%>">LibrayGOD</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<%=UrlHomePage%>">Home</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Thể loại<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <%for (Theloaisach theloaisach : theLoaiSachDAO.getList()) {%>
                                <li><a class="TheLoai" href="#right_content_id" vals="<%=theloaisach.getId()%>"><%=theloaisach.getTen()%></a></li>
                            <%}%>
                        </ul>
                    </li>
                    <li><a href="#">Hướng dẫn</a></li>
                </ul>

            </div>
        </nav>
        <div class="imgWall">
            <img src="${pageContext.request.contextPath}/Media/wall.jpg">
        </div>
        <div class="full_content">
            <div class="left_content" >
                <%for (Theloaisach theloaisach : theLoaiSachDAO.getList()) {%>
                    <div id="the_loai"><a class="TheLoai" href="javascript:;" vals="<%=theloaisach.getId()%>"><%=theloaisach.getTen()%></a></div>
                <%}%>
            </div>
        </div>    
        <div class="right_content" id="right_content_id">

</html>