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
            BienTapDAO bienTapDAO = new BienTapDAO();
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
                        <li >
                            <a href="index.jsp" class=""><i class="fa fa-dashboard "></i>Quản lý Admin</a>
                        </li>

                        <li class="active">
                            <a href="#" class="active-menu-top"><i class="fa fa-desktop "></i>Quản lý nhân lực <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li >
                                    <a href="bientap.jsp" ><i class="fa fa-toggle-on"></i>Biên tập</i></a>
                                </li>
                                <li>
                                    <a href="panel-tabs.html" class="active-menu"><i class="fa fa-toggle-on"></i>Tác giả</a>
                                </li>
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Người đọc truyện</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop "></i>Quản lý sách <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Sách truyền thống</a>
                                </li>
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>EBOOK</a>
                                </li>
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Sách nói</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop "></i>Quản lý danh mục<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Thể loại sách</a>
                                </li>
                                <li>
                                    <a href="panel-tabs.html"><i class="fa fa-toggle-on"></i>Nội dung</a>
                                </li>

                            </ul>
                        </li>

                    </ul>
                </div>

            </nav>
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">Biên tập</h1>
                    <div class="col-md-10">
                        <%
                            String Action="Add";
                            String URLAtion = "/TVDT_FI1/TacGiaActionController?Excute=1&Action="+Action;
                        %>
                    <form role="form" method="POST" action="<%=URLAtion%>">
                        <input value="" name="id" type="number" style="display: none;">
                        <div class="form-group">
                            <label>Tên</label>
                            <input name="ten" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Giới tính</label>
                            <select name="gioi_tinh" class="form-control">
                                <option value="true">Nam</option>
                                <option value="false">Nữ</option>
                            </select>

                        </div>
                        <div class="form-group">
                            <label>ngày sinh</label>
                            <input name="ngay_sinh" class="form-control" type="date">
                        </div>
                        <div class="form-group">
                            <label>SĐT</label>
                            <input name="sdt" class="form-control" type="number">

                        </div>
                        <div class="form-group">
                            <label>Tiểu sử</label>
                            <textarea name="tieu_su" class="form-control" rows="3"></textArea>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-info" value="<%=Action%>">
                        </div>
                    </form>
                        </div>
                    </div>
            <!-- /. ROW  -->
                </div>
        <!-- /. PAGE INNER  -->
            </div>
        <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <div id="footer-sec">
            &copy; 2014 YourCompany | Design By : <a href="http://www.binarytheme.com/" target="_blank">BinaryTheme.com</a>
        </div>
        <!-- /. FOOTER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>


    </body>
</html>
