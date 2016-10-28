<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar navbar-inverse navbar-fixed-top scroll-me" id="menu-section" >
	<div class="container">
	    <div class="navbar-header">
	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	    <span class="icon-bar"></span>
	    <span class="icon-bar"></span>
	    <span class="icon-bar"></span>
	    </button>
	        <a class="navbar-brand" href="#">
	            <img src="/static/img/logo/logo.png" class="img-responsive logo" />
	        </a>
	    </div>
	    <div class="navbar-collapse collapse" >
	        <ul class="nav navbar-nav navbar-right">
	            <li  class='<c:if test="${page == 'home'}"> active </c:if>' ><a href="/">TRANG CHỦ</a></li>
	            <li   class="dropdown-large  <c:if test="${page == 'product'}"> active </c:if>">
	                <a href="" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
	                    SẢN PHẨM
	                </a>
					<ul class="dropdown-menu dropdown-menu-large row" id="header-product-menu" >
					 	
					</ul>
				</li>
	            <li class='<c:if test="${page == 'pricing'}"> active </c:if>'><a href="/pricing">BẢNG GIÁ</a></li>
	            <li class='<c:if test="${page == 'loan'}"> active </c:if>'><a href="#">XE TRẢ GÓP</a></li>
	            <li class='<c:if test="${page == 'repair'}"> active </c:if>'><a href="#">SỬA CHỮA</a></li>
	            <li class='<c:if test="${page == 'insurrance'}"> active </c:if>'><a href="#">BẢO HIỂM</a></li>
	            <li class='<c:if test="${page == 'contact'}"> active </c:if>'><a href="#">LIÊN HỆ</a></li>
	        </ul>
	    </div>
	
	</div>
</div>
<script>
	 var grouptmpstr = "<li class='col-sm-3 img' ><a href='/product/{0}'><img class='img-responsive' src='{1}' /><h5 class='mtitle'>{2}</h5></a></li>"
	 var grouptmp = $.validator.format(grouptmpstr);
	 $(function(){
		$.get('/api/product/productgroups', function(data){
			$('#header-product-menu').html("");
			$.each(data.objects, function(key,val){
				$('#header-product-menu').append(grouptmp(val.id, val.img, val.name));
			});
		});
	 });
</script>