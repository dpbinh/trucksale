<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<c:url value="/"/>">OTO Tải Biên Hòa ADMIN</a>
	</div>
	<!-- Top Menu Items -->
	<ul class="nav navbar-right top-nav">
		 
		<li class="dropdown">
			<a href="#" class="dropdown-toggle"data-toggle="dropdown">
				Hoạt Động <b class="caret"></b>
			</a>
			<ul class="dropdown-menu">
				<li><a href="<c:url value="/admin/logout"/>"><i class="fa fa-fw fa-power-off"></i> LogOut</a></li>
			</ul>
		</li>
	</ul>
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li class='<c:if test="${page == 'products'}"> active </c:if>'>
				<a href="<c:url value="/admin/products"/>">Quản Lý Sản Phẩm</a>
			</li>
 
			<li class='<c:if test="${page == 'password'}"> active </c:if>'>
				<a href="<c:url value="/admin/changepass"/>">Đổi Mật Khẩu</a>
			</li>
			
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</nav>