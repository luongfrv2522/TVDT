

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/common/head.jsp" %>
<html>
    <div class="filter_menu">
    <div class="search_menu">

            <div style="">
                <select class="search_id">
                    <option value="1">Tên sách</option>
                    <option value="2">Tác giả</option>
                    <option value="3">Người đọc</option>
                    <option value="4">Biên tập</option>
                </select>
            </div> 
            <div style=""><input type="text" name="search_content" class="key_word"></div>
            <div class="btn_timkiem" style=""><input type="button" name="" value="Tìm kiếm"></div>

    </div>
    <div class="sort_menu">
        <div id="flip">Sắp xếp</div>
        <div id="panel">
            <div><a class="Sort" href="#right_content_id" vals="3">Sách nói</a></div>
            <div><a class="Sort" href="#right_content_id" vals="2">Sách chữ</a></div>
            <div><a class="Sort" href="#right_content_id" vals="1">Sách truyền thống</a></div>
        </div>
    </div>
</div>
<%
    List<Sach> listSach = Common.getListSach();
    if (request.getAttribute("listSach") != null) {
        listSach = (List<Sach>) request.getAttribute("listSach");
    }
%>
<div class="list_item">
    <div class="list_item_content">
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
    </div>
</div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/UserIndex.js"></script>
    <%@include file="/common/footer.jsp" %>
</html>

