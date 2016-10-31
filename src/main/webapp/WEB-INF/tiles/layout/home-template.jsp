<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		 
		<title>Trang Chủ</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<link rel="shortcut icon" href="<c:url value="/static/img/logo/icon.png"/>" type="image/x-icon" />
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
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
		<script src="<c:url value="/static/js/custom.js"/>"></script>
		<script src="<c:url value="/static/js/jquery.validate.min.js"/>"></script>
	</head>
	<body>
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Body -->
		<tiles:insertAttribute name="body" />
		<!-- Footer -->
		<tiles:insertAttribute name="footer" />

		
	</body>
</html>