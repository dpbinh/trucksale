<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		 
		<title><tiles:getAsString name="title" /></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<link rel="shortcut icon" href="<c:url value="/static/img/logo/icon.png"/>" type="image/x-icon" />
		
		
		<link href="<c:url value="/static/css/bootstrap.css"/>" rel="stylesheet" />
		<link href="<c:url value="/static/css/ionicons.css"/>" rel="stylesheet" />
		<link href="<c:url value="/static/css/font-awesome.css"/>" rel="stylesheet" />
		<link href="<c:url value="/static/js/source/jquery.fancybox.css"/>" rel="stylesheet" />
		<link href="<c:url value="/static/css/animations.min.css"/>" rel="stylesheet" />
		<link href="<c:url value="/static/css/style-white.css"/>" rel="stylesheet" />
		
		<script src="<c:url value="/static/js/jquery-1.11.1.js"/>"></script>
		<script src="<c:url value="/static/js/bootstrap.js"/>"></script>
		<script src="<c:url value="/static/js/vegas/jquery.vegas.min.js"/>"></script>
		<script src="<c:url value="/static/js/appear.min.js"/>"></script>
		<script src="<c:url value="/static/js/animations.min.js"/>"></script>
		<script src="<c:url value="/static/js/jquery.validate.min.js"/>"></script>
		<script>
			var root = <c:url value="/"/>;
			
			function moneyFormat(price, sign = ' VNĐ ') {
				if(price == 0){
					return "Liên Hệ";
				}
			  const pieces = parseFloat(price).toFixed(2).split('')
			  let ii = pieces.length - 3
			  while ((ii-=3) > 0) {
			    pieces.splice(ii, 0, ',')
			  }
			  return   pieces.join('') + sign
			}
		</script>
	</head>
	<body>
		<div class="background-second-page"></div>
    	<div class="background-overlay-second-page"></div>
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Body -->
		<tiles:insertAttribute name="body" />
		<!-- Footer -->
		<tiles:insertAttribute name="footer" />
		
 		
		<tiles:insertAttribute name="script"/>
	</body>
</html>