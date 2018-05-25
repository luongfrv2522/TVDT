<%-- 
    Document   : head.jsp
    Created on : Nov 15, 2017, 2:54:42 AM
    Author     : Admin
--%>
<%@page import="Controller.Login.Common"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.*"%>
<%@page import="Model.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%!
        TheLoaiSachDAO theLoaiSachDAO = new TheLoaiSachDAO();
        SachTruyenThongDAO sachTruyenThongDAO = new SachTruyenThongDAO();
        ISachChuDAO iSachChuDAO = new ISachChuDAO();
        ISachNoiDAO iSachNoiDAO = new ISachNoiDAO();
        AdminDAO adminDAO = new AdminDAO();
        String UrlHomePage = "/TVDT_FI1/User/index.jsp";
        String Basic = "/TVDT_FI1";
    %>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Bootstrap Advance Admin Template</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">COMPANY NAME</a>
            </div>

            <div class="header-right">

                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>


            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="active">
                        <a href="index.jsp" class="active-menu"><i class="fa fa-dashboard "></i>Quản lý Admin</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý nhân lực <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="bientap.jsp"><i class="fa fa-toggle-on"></i>Biên tập</i></a>
                            </li>
                            <li>
                                <a href="tacgia.jsp"><i class="fa fa-toggle-on"></i>Tác giả</a>
                            </li>
                            <li>
                                <a href="nguoidoc.jsp"><i class="fa fa-toggle-on"></i>Người đọc truyện</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý sách <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="sachtruyenthong.jsp"><i class="fa fa-toggle-on"></i>Sách truyền thống</a>
                            </li>
                            <li>
                                <a href="ebook.jsp"><i class="fa fa-toggle-on"></i>EBOOK</a>
                            </li>
                            <li>
                                <a href="sachnoi.jsp"><i class="fa fa-toggle-on"></i>Sách nói</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý danh mục<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="theloaisach.jsp"><i class="fa fa-toggle-on"></i>Thể loại sách</a>
                            </li>
                            <li>
                                <a href="noidung.jsp"><i class="fa fa-toggle-on"></i>Nội dung</a>
                            </li>

                        </ul>
                    </li>

                </ul>
            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
</html>
