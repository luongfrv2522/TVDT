<%-- 
    Document   : index
    Created on : Nov 15, 2017, 2:57:42 AM
    Author     : Admin
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <div id="page-wrapper_">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">admin</h1>
                </div>
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
                                        <th>UserName</th>
                                        <th>Password</th>
                                        <th>SĐT</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int i = 1;
                                        String gioiTinh;
                                        String ngaySinh;
                                    %>
                                    <%for (Admin admin : adminDAO.getList()) {%>
                                    <%
                                        gioiTinh = admin.isGioiTinh() ? "Nam" : "Nữ";
                                        ngaySinh = Common.DinhDangNgay(admin.getNgaySinh(), "dd/MM/yyyy");
                                    %>

                                    <tr>
                                        <td><%=i++%></td>
                                        <td><%=admin.getTen()%></td>
                                        <td><%=gioiTinh%></td>
                                        <td><%=ngaySinh%></td>
                                        <td><%=admin.getUserName()%></td>
                                        <td><%=admin.getPassWowd()%></td>
                                        <td>0<%=admin.getSdt()%></td>
                                        <td class="Action">
                                            <!--                                                <button class="btn btn-xs"><i class="glyphicon glyphicon-headphones" data-toggle="modal" data-target="#View"></i>View</button>-->
                                            <button class="btn_edit" val1="<%=admin.getId()%>" class="btn btn-xs btn-primary" data-toggle="modal" data-target="#Edit"><i class="glyphicon glyphicon-plus" ></i>Edit</button>
                                            <button  val1="<%=admin.getId()%>" onclick=" return confirm('Bán muốn xóa?')" class="btn btn-xs btn-danger" data-toggle="modal" data-target="#Delete"><i class="glyphicon glyphicon-home"></i>
                                                <a class="btn_delete" href="/TVDT_FI1/AdminActionController?Action=Delete&id=<%=admin.getId()%>">Delete</a>
                                            </button>
                                        </td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                            <button type="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#Add">Add</button>
                        </div>
                    </div>
                </div>
                <!-- End  Kitchen Sink -->
            </div>
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- Begin Action  --->
    <!--View-->
    <div class="modal fade" id="View" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="">Modal title</h4>
                </div>
                <div class="modal-body">
                   <form role="form" method="POST" action="/TVDT_FI1/AdminActionController?Action=Edit">
                        <input name="id" type="number" style="display: none;">
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
                            <label>Username</label>
                            <input name="User" class="form-control" type="text">

                        </div>
                        <div class="form-group">
                            <label name="">Password</label>
                            <input name="Pass" class="form-control" type="password">
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-info" value="Edit">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Theem</button>
                </div>
            </div>
        </div>
    </div>
    <!--Add-->
    <div class="modal fade" id="Add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Add</h4>
                </div>
                <div class="modal-body">
                    <form role="form" method="POST" action="/TVDT_FI1/AdminActionController?Action=Add">
                        <input name="id" type="number" style="display: none;">
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
                            <label>Username</label>
                            <input name="User" class="form-control" type="text">

                        </div>
                        <div class="form-group">
                            <label name="">Password</label>
                            <input name="Pass" class="form-control" type="password">
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-info" value="Add">
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>
    <!--Edit-->
    <div class="modal fade" id="Edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="">Add</h4>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <!--  End Action  --->
    <!-- /. PAGE WRAPPER  -->
</div>
<%@include file="foot.jsp" %>
<script type="text/javascript">
    $(document).ready(function() {
        $(".btn_edit").click(function(event) {
            alert($("input[name='ngay_sinh']").val())
        });
    });
</script>
</html>
