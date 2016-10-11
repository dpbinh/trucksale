<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="" />
		<meta name="author" content="" />

		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
		<link href="assets/css/bootstrap.css" rel="stylesheet" />
		<link href="assets/css/ionicons.css" rel="stylesheet" />
		<link href="assets/css/font-awesome.css" rel="stylesheet" />
		<link href="assets/js/source/jquery.fancybox.css" rel="stylesheet" />
		<link href="assets/css/animations.min.css" rel="stylesheet" />
		<link href="assets/css/style-white.css" rel="stylesheet" />
		<title><tiles:getAsString name="title" /></title>
	</head>
	<body>
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Body -->
		<tiles:insertAttribute name="body" />
		<!-- Footer -->
		<tiles:insertAttribute name="footer" />
		
		<script src="assets/js/jquery-1.11.1.js"></script>
		<!-- SCRIPTS -->
		<script src="assets/js/bootstrap.js"></script>
		<script src="assets/js/vegas/jquery.vegas.min.js"></script>
		<script src="assets/js/appear.min.js"></script>
		<script src="assets/js/animations.min.js"></script>
		<script src="assets/js/custom.js"></script>
	</body>
</html>