<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang chủ" /></title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/template/admin/css/main.css' />" />
<link rel="stylesheet"
	href="<c:url value='https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css' />" />
<link rel="stylesheet"
	href="<c:url value='https://unpkg.com/boxicons@latest/css/boxicons.min.css' />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css' />" />


<script
	src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js' />"></script>
<link rel="stylesheet"
	href="<c:url value='https://use.fontawesome.com/releases/v5.8.2/css/all.css' />">
<link rel="stylesheet"
	href="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css' />">
</head>
<body>
	<%@include file="/common/admin/header.jsp"%>
	<%@include file="/common/admin/menu.jsp"%>
	<dec:body />
	<%@include file="/common/admin/footer.jsp"%>

	<script src="<c:url value='/template/admin/js/jquery-3.2.1.min.js' />"></script>
	<script src="<c:url value='/template/admin/js/popper.min.js' />"></script>
	<script
		src="<c:url value='https://unpkg.com/boxicons@latest/dist/boxicons.js' />"></script>
	<script src="<c:url value='/template/admin/js/bootstrap.min.js' />"></script>

	<script
		src="<c:url value='//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js' />"></script>
	<script src="<c:url value='src/jquery.table2excel.js' />"></script>

	<script src="<c:url value='/template/admin/js/main.js' />"></script>
	<script src="<c:url value='/template/admin/js/plugins/pace.min.js' />"></script>

	<script
		src="<c:url value='https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js' />"></script>

	<script type="text/javascript"
		src="<c:url value='/template/admin/js/plugins/chart.js' />"></script>

	<script type="text/javascript"
		src="<c:url value='/template/admin/js/plugins/jquery.dataTables.min.js' />"></script>
	<script type="text/javascript"
		src="<c:url value='/template/admin/s/plugins/dataTables.bootstrap.min.js' />"></script>
	<script type="text/javascript">
    var data = {
      labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6"],
      datasets: [{
        label: "Dữ liệu đầu tiên",
        fillColor: "rgba(255, 213, 59, 0.767), 212, 59)",
        strokeColor: "rgb(255, 212, 59)",
        pointColor: "rgb(255, 212, 59)",
        pointStrokeColor: "rgb(255, 212, 59)",
        pointHighlightFill: "rgb(255, 212, 59)",
        pointHighlightStroke: "rgb(255, 212, 59)",
        data: [20, 59, 90, 51, 56, 100]
      },
      {
        label: "Dữ liệu kế tiếp",
        fillColor: "rgba(9, 109, 239, 0.651)  ",
        pointColor: "rgb(9, 109, 239)",
        strokeColor: "rgb(9, 109, 239)",
        pointStrokeColor: "rgb(9, 109, 239)",
        pointHighlightFill: "rgb(9, 109, 239)",
        pointHighlightStroke: "rgb(9, 109, 239)",
        data: [48, 48, 49, 39, 86, 10]
      }
      ]
    };
    var ctxl = $("#lineChartDemo").get(0).getContext("2d");
    var lineChart = new Chart(ctxl).Line(data);

    var ctxb = $("#barChartDemo").get(0).getContext("2d");
    var barChart = new Chart(ctxb).Bar(data);
  </script>
	<script type="text/javascript">
    //Thời Gian
    function time() {
      var today = new Date();
      var weekday = new Array(7);
      weekday[0] = "Chủ Nhật";
      weekday[1] = "Thứ Hai";
      weekday[2] = "Thứ Ba";
      weekday[3] = "Thứ Tư";
      weekday[4] = "Thứ Năm";
      weekday[5] = "Thứ Sáu";
      weekday[6] = "Thứ Bảy";
      var day = weekday[today.getDay()];
      var dd = today.getDate();
      var mm = today.getMonth() + 1;
      var yyyy = today.getFullYear();
      var h = today.getHours();
      var m = today.getMinutes();
      var s = today.getSeconds();
      m = checkTime(m);
      s = checkTime(s);
      nowTime = h + " giờ " + m + " phút " + s + " giây";
      if (dd < 10) {
        dd = '0' + dd
      }
      if (mm < 10) {
        mm = '0' + mm
      }
      today = day + ', ' + dd + '/' + mm + '/' + yyyy;
      tmp = '<span class="date"> ' + today + ' - ' + nowTime +
        '</span>';
      document.getElementById("clock").innerHTML = tmp;
      clocktime = setTimeout("time()", "1000", "Javascript");

      function checkTime(i) {
        if (i < 10) {
          i = "0" + i;
        }
        return i;
      }
    }
  </script>

<!-- Delete -->
	<script type="text/javascript">
	function deleteRow(r) {
	      var i = r.parentNode.parentNode.rowIndex;
	      document.getElementById("myTable").deleteRow(i);
	    }
	    jQuery(function () {
	      jQuery(".trash").click(function () {
	        swal({
	          title: "Cảnh báo",
	         
	          text: "Bạn có chắc chắn là muốn xóa nhân viên này?",
	          buttons: ["Hủy bỏ", "Đồng ý"],
	        })
	          .then((willDelete) => {
	            if (willDelete) {
	              swal("Đã xóa thành công.!", {
	                
	              });
	            }
	          });
	      });
	    });
  </script>

</body>
</html>