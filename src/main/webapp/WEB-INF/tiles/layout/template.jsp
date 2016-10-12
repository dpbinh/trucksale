<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
	<head>
		 
		<title><tiles:getAsString name="title" /></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		
		
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/static/css/ionicons.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/static/js/source/jquery.fancybox.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/static/css/animations.min.css" rel="stylesheet" />
		<link href="${pageContext.request.contextPath}/static/css/style-white.css" rel="stylesheet" />
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
		
 		<script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/vegas/jquery.vegas.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/appear.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/animations.min.js"></script>
		<tiles:insertAttribute name="script"/>
	</body>
</html>