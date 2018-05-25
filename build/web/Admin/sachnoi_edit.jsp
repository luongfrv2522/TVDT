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

        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Responsive Bootstrap Advance Admin Template</title>

        <!-- BOOTSTRAP STYLES-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <!-- FONTAWESOME STYLES-->
        <link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <!--CUSTOM BASIC STYLES-->
        <link href="assets/css/basic.css" rel="stylesheet" type="text/css"/>
        <!--CUSTOM MAIN STYLES-->
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
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
                                    <a class="active-menu" href="/TVDT_FI1/Admin/sachtruyenthong.jsp"><i class="fa fa-toggle-on"></i>Sách truyền thống</a>
                                </li>
                                <li>
                                    <a href="/TVDT_FI1/Admin/ebook.jsp"><i class="fa fa-toggle-on"></i>EBOOK</a>
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
                                    <a  href="/TVDT_FI1/Admin/theloaisach.jsp"><i class="fa fa-toggle-on"></i>Thể loại sách</a>
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
                             Sachtruyenthong bientap = (Sachtruyenthong) request.getAttribute("item");
                            String Action="Add";
                            if(bientap!=null){
                                Action="Edit";
                            }
                            String URLAtion = "/TVDT_FI1/SachtruyenthongActionController?Excute=1&Action="+Action;
                        %>
                    <form role="form" method="POST" action="<%=URLAtion%>">
                        <input value="<%=Common.noteNULL(bientap.getId().toString())%>" name="id" type="number" style="display: none;">
                        <div class="form-group">
                            <label>Tên</label>
                            <input value="<%=Common.noteNULL(bientap.getTen())%>" name="ten" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Ảnh bìa</label>
                            <input value="<%=Common.noteNULL(bientap.getAnhBia())%>" name="anh_bia" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Tóm tắt</label>
                            <input value="<%=Common.noteNULL(bientap.getTomTat())%>" name="tom_tat" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label>Tác giả</label>
                            <select class="form-group" name="tac_gia" value="<%=Common.noteNULL(bientap.getTacgia().getId().toString())%>">
                                <%for(Tacgia item : new TacGiaDAO().getList()){%>
                                <option value="<%=item.getId()%>"><%=item.getTen()%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Biên tập</label>
                            <select class="form-group" name="bien_tap" value="<%=Common.noteNULL(bientap.getBientap().getId().toString())%>">
                                <%for(Bientap item : new BienTapDAO().getList()){%>
                                <option value="<%=item.getId()%>"><%=item.getTen()%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Thể loại</label>
                            <select class="form-group" name="the_loai" value="<%=Common.noteNULL(bientap.getTheloaisach().getId().toString())%>" >
                                 <%for(Theloaisach item : new TheLoaiSachDAO().getList()){%>
                                <option value="<%=item.getId()%>"><%=item.getTen()%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Trạng thái</label>
                            <select class="form-group" name="trang_thai" value="<%=Common.noteNULL(String.valueOf(bientap.getTrangThai()))%>">
                                <option value="1">Còn</option>
                                <option value="0">Đã mượn</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Ngày xuất bản</label>
                            <input value="<%=Common.noteNULL(Common.DinhDangNgay(bientap.getNgayXuatBan(), "yyyy-MM-dd"))%>" name="ngay_xuat_ban" class="form-control" type="date">
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
        <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js" type="text/javascript"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js" type="text/javascript"></script>


    </body>
</html>
