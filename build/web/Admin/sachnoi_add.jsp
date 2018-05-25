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

                        <li >
                            <a href="#" class="active-menu-top"><i class="fa fa-desktop "></i>Quản lý nhân lực <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li >
                                    <a href="/TVDT_FI1/Admin/bientap.jsp" ><i class="fa fa-toggle-on"></i>Biên tập</i></a>
                                </li>
                                <li>
                                    <a href="/TVDT_FI1/Admin/tacgia.jsp" ><i class="fa fa-toggle-on"></i>Tác giả</a>
                                </li>
                                <li>
                                    <a href="/TVDT_FI1/Admin/nguoidoc.jsp" ><i class="fa fa-toggle-on"></i>Người đọc truyện</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="#"><i class="fa fa-desktop "></i>Quản lý sách <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a  href="/TVDT_FI1/Admin/sachtruyenthong.jsp"><i class="fa fa-toggle-on"></i>Sách truyền thống</a>
                                </li>
                                <li>
                                    <a class="active-menu" href="/TVDT_FI1/Admin/ebook.jsp"><i class="fa fa-toggle-on"></i>EBOOK</a>
                                </li>
                                <li>
                                    <a href="/TVDT_FI1/Admin/sachnoi.jsp"><i class="fa fa-toggle-on"></i>Sách nói</a>
                                </li>

                            </ul>
                        </li>
                        <li >
                            <a href="#"><i class="fa fa-desktop "></i>Quản lý danh mục<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a class="active-menu" href="/TVDT_FI1/Admin/theloaisach.jsp"><i class="fa fa-toggle-on"></i>Thể loại sách</a>
                                </li>
                                <li>
                                    <a href="/TVDT_FI1/Admin/noidung.jsp"><i class="fa fa-toggle-on"></i>Nội dung</a>
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
                            <h1 class="page-head-line">Thể loại sách</h1>
                    <div class="col-md-10">
                        <%
                            String Action="Add";
                            String URLAtion = "/TVDT_FI1/SachtruyenthongActionController?Excute=1&Action="+Action;
                        %>
                    <form role="form" method="POST" action="<%=URLAtion%>">
                        <input value="" name="id" type="number" style="display: none;">
                        <div class="form-group">
                            <label>Tên</label>
                            <input name="ten" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Ảnh bìa</label>
                            <input name="anh_bia" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt</label>
                            <input name="tom_tat" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Tác giả</label>
                            <select class="form-group" name="tac_gia">
                                <option value=""></option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Biên tập</label>
                            <select class="form-group" name="bien_tap   ">
                                <option value=""></option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Thể loại</label>
                            <select class="form-group" name="the_loai">
                                <option value=""></option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái</label>
                            <select class="form-group" name="trang_thai">
                                <option value="1">Còn</option>
                                <option value="0">Đã mượn</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Ngày xuất bản</label>
                            <input name="ngay_xuat_ban" class="form-control" type="date">
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
