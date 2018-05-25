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
                    <a class="navbar-brand" href="/TVDT_FI1/Admin/index.html">COMPANY NAME</a>
                </div>

                <div class="header-right">

                    <a href="/TVDT_FI1/Admin/login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>


                </div>
            </nav>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li >
                            <a href="/TVDT_FI1/Admin/index.jsp" class=""><i class="fa fa-dashboard "></i>Quản lý Admin</a>
                        </li>

                        <li class="active">
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý nhân lực <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a class="active-menu" href="/TVDT_FI1/Admin/bientap.jsp"><i class="fa fa-toggle-on"></i>Biên tập</i></a>
                            </li>
                            <li>
                                <a href="/TVDT_FI1/Admin/tacgia.jsp"><i class="fa fa-toggle-on"></i>Tác giả</a>
                            </li>
                            <li>
                                <a href="/TVDT_FI1/Admin/nguoidoc.jsp"><i class="fa fa-toggle-on"></i>Người đọc truyện</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý sách <span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="/TVDT_FI1/Admin/sachtruyenthong.jsp"><i class="fa fa-toggle-on"></i>Sách truyền thống</a>
                            </li>
                            <li>
                                <a href="/TVDT_FI1/Admin/ebook.jsp"><i class="fa fa-toggle-on"></i>EBOOK</a>
                            </li>
                            <li>
                                <a href="/TVDT_FI1/Admin/sachnoi.jsp"><i class="fa fa-toggle-on"></i>Sách nói</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-desktop "></i>Quản lý danh mục<span class="fa arrow"></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="/TVDT_FI1/Admin/theloaisach.jsp"><i class="fa fa-toggle-on"></i>Thể loại sách</a>
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
                            <h1 class="page-head-line">Tác giả</h1>
                        </div>
                        <div class="col-md-12">
                            <!--   Kitchen Sink -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Danh sách Admin
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr class="table_head">
                                                    <th>#</th>
                                                    <th>Tên</th>
                                                    <th>Giới tính</th>
                                                    <th>Ngày Sinh</th>
                                                    <th>SĐT</th>
                                                    <th>Nhân viên</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int i = 1;
                                                    String gioiTinh;
                                                    String ngaySinh;
                                                    String ChinhThuc;
                                                %>
                                                <%for (Bientap item : bienTapDAO.getList()) {%>
                                                <%
                                                    gioiTinh = item.isGioiTinh() ? "Nam" : "Nữ";
                                                    ngaySinh = Common.DinhDangNgay(item.getNgaySinh(), "dd/MM/yyyy");
                                                    ChinhThuc = item.isNhanVienChinhThuc()? "chính thức" : "Hợp đồng";
                                                %>

                                                <tr>
                                                    <td><%=i++%></td>
                                                    <td><%=item.getTen()%></td>
                                                    <td><%=gioiTinh%></td>
                                                    <td><%=ngaySinh%></td>
                                                    <td>0<%=item.getSdt()%></td>
                                                    <td><%=ChinhThuc%></td>
                                                    <td class="Action">
                                                        <!--                                                <button class="btn btn-xs"><i class="glyphicon glyphicon-headphones" data-toggle="modal" data-target="#View"></i>View</button>-->
                                                        <button class="btn_edit" val1="<%=item.getId()%>" class="btn btn-xs btn-primary" data-toggle="modal" data-target="#Edit"><i class="glyphicon glyphicon-plus" ></i>
                                                            <a class="btn_delete" href="/TVDT_FI1/BienTapActionController?Action=Edit&id=<%=item.getId()%>">Edit</a></button>
                                                        <button  val1="<%=item.getId()%>" onclick=" return confirm('Bán muốn xóa?')" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#Delete"><i class="glyphicon glyphicon-home"></i>
                                                            <a class="btn_delete" href="/TVDT_FI1/BienTapActionController?Action=Delete&id=<%=item.getId()%>">Delete</a>
                                                        </button>
                                                    </td>
                                                </tr>
                                                <%}%>
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#Add">
                                            <a class="btn_delete" href="/TVDT_FI1/BienTapActionController?Action=Add">Add</a></button>
                                    </div>
                                </div>
                            </div>
                            <!-- End  Kitchen Sink -->
                        </div>
                    </div>
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
