<%-- 
    Document   : Detail
    Created on : Nov 14, 2017, 10:31:10 AM
    Author     : Admin
--%>

<%@page import="Model.*"%>
<%@page import="DAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        Sach item = (Sach) request.getAttribute("item");
    %>

    <div class="right_content_detail">
        <%if (item != null) {%>
        <div><h2><%=item.getTen()%></h2></div>
        <div class="detail_img"><img src="<%=item.getAnhBia()%>"></div>
        <div class="right_detail">
            <div><b>Tác giả: </b><%=item.getTacgia().getTen()%></div>
            <div><b>Biên tập: </b><%=item.getBientap().getTen()%></div>
            <%if(item.LoaiSach==3){%>
            <div><b>Người đọc: </b><%=new ISachNoiDAO().getById(item.getId()).getVitualNguoiDoc().getTen()%></div>
            <%}%>
            <div><b>Thể loại: </b><%=item.getTheloaisach().getTen()%></div>
            <div><h3>Tóm tắt</h3></div>
            <div style="text-align: justify;"><p><%=item.getTomTat()%></p></div>
        </div>
        <%}%>
    </div>
</html>
