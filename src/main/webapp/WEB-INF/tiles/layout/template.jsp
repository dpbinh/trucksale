<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
	<head>
		<meta charset="utf-8" />
 		<link href="static/style.css" rel="stylesheet"/>
		<title><tiles:getAsString name="title" /></title>
	</head>
	<body>
		<div class="main">menu</div>
		<!-- Header -->
		<tiles:insertAttribute name="header" />
		<!-- Body -->
		<tiles:insertAttribute name="body" />
		<!-- Footer -->
		<tiles:insertAttribute name="footer" />
		
 
	</body>
</html>