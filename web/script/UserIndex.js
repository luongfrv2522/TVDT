function getListItem(TheLoaiSach, LoaiSach) {
	$.ajax({
		url: '/TVDT_FI1/getListItem',
		data: {"TheLoaiSach": TheLoaiSach, "LoaiSach":LoaiSach},
		type: 'POST',
		dataType: 'html',
		cache:false,
		success: function (result) {
			$(".list_item_content").html('');
			$(".list_item_content").html(result)
		}
	});
}
function search(ThuocTinh, Keyword) {
	
	$.ajax({
		url: '/TVDT_FI1/getListItem',
		data: {"ThuocTinh": ThuocTinh, "Keyword":Keyword},
		type: 'POST',
		dataType: 'html',
		cache:false,
		success: function (result) {
			$(".list_item_content").html('');
			$(".list_item_content").html(result)
		}
	});
}
$(document).ready(function(){
	$("#flip").click(function(){
		$("#panel").slideToggle("slow");
	});


	$("body").on('click','.TheLoai',function(event) {
		var TheLoaiSach = $(this).attr("vals");
		getListItem(TheLoaiSach,0);
	});
	$("body").on('click','.Sort',function(event) {
		var LoaiSach = $(this).attr("vals");
		getListItem(0,LoaiSach);
	});
	$("body").on('click','.btn_timkiem',function(event) {
		var ThuocTinh = $(".search_id").val();
		var Keyword = $(".key_word").val();
		search(ThuocTinh,Keyword);
	});
	$(".list_item").on('click','.sach_item',function(event) {
		var ID = $(this).attr("val1");
		var LoaiSach = $(this).attr("val2");
		$.ajax({
			url: '/TVDT_FI1/DetailController',
			data: {"ID": ID, "LoaiSach":LoaiSach},
			type: 'POST',

			success: function (result) {
				$(".list_item_content").html('');
				$(".list_item_content").html(result);
			}
		});
	});


});