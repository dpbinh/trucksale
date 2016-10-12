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
	    <div class="navbar-collapse collapse">
	        <ul class="nav navbar-nav navbar-right">
	            <li  class='<c:if test="${page == 'home'}"> active </c:if>' ><a href="/">TRANG CHỦ</a></li>
	            <li   class="dropdown-large  <c:if test="${page == 'product'}"> active </c:if>">
	                <a href="" class="dropdown-toggle" data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false">
	                    SẢN PHẨM
	                </a>
					<ul class="dropdown-menu dropdown-menu-large row">
						<li class="col-sm-3 img">
							<a href="/product/1">
								<img class="img-responsive" src="/static/img/logo/suzuki.png" />
								<h5 class="mtitle">Suzuki</h5>
							</a>
						</li>
						<li class="img col-sm-3">
							<a href="products.html">
							<img class="img-responsive" src="/static/img/logo/huyndai.png" />
							<h5 class="mtitle">Hyundai</h5>
							</a>
						</li>
						<li class="col-sm-3 img">
							<a href="#">
								<img class="img-responsive" src="/static/img/logo/misubishi.png" />
								<h5 class="mtitle">Mitsubishi</h5>
							</a>
						</li>
						<li class="col-sm-3 img">
							<a href="#">
								<img class="img-responsive" src="/static/img/logo/isuzu.png" />
								<h5 class="mtitle">Isuzu</h5>
							</a>
						</li>
						<li class="col-sm-3 img">
							<a href="#">
								<img class="img-responsive" src="/static/img/logo/veam.png" />
								<h5 class="mtitle">Veam</h5>
							</a>
						</li>
						<li class="col-sm-3 img">
							<a href="#">
								<img class="img-responsive" src="/static/img/logo/dongfeng.png" />
								<h5 class="mtitle">Dongfeng</h5>
							</a>
						</li>
						<li class="col-sm-3 img">
							<a href="#">
								<img class="img-responsive" src="/static/img/logo/hino.png" />
								<h5 class="mtitle">Hino</h5>
							</a>
						</li>
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