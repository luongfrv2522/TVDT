
<%@page import="java.util.List"%>
<%@page import="Model.Sach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%
        List<Sach> listSach = (List<Sach>) request.getAttribute("listSach");
    %>
        <%for (Sach x : listSach) {%>
        <div class="thumbnail">
            <%
                String url = "/TVDT_FI1/DetailController?ID=" + x.getId() + "&LoaiSach=" + x.LoaiSach;
                String LoaiSach = "";
                switch (x.LoaiSach) {
                    case 1:
                        LoaiSach = "Sách truyền thống";
                        break;
                    case 2:
                        LoaiSach = "EBOOK Chữ";
                        break;
                    case 3:
                        LoaiSach = "EBOOK nói";
                        break;
                }
            %>
            <a href="javascrip:;" class="sach_item" val1="<%=x.getId()%>" val2="<%=x.LoaiSach%>">
                <div class="list-group-item-heading"><%=LoaiSach%></div>
                <div class="img-thumbnail"><img src="<%=x.getAnhBia()%>"></div>
                <div class="list-group-item-heading"><%=x.getTen()%></div>
            </a>
        </div>
        <%}%>
</html>

