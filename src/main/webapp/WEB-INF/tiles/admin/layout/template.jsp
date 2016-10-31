<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title><tiles:getAsString name="admin_title" /></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="<c:url value="/static/img/logo/icon.png"/>" type="image/x-icon" />
<link href="<c:url value="/static/css/bootstrap.css"/>" rel="stylesheet" />
<link href="<c:url value="/static/css/sb-admin.css"/>" rel="stylesheet">
<link href="<c:url value="/static/css/font-awesome.css"/>" rel="stylesheet" />
<script src="<c:url value="/static/js/jquery-1.11.1.js"/>"></script>
<script src="<c:url value="/static/js/bootstrap.js"/>"></script>
<script src="<c:url value="/static/js/jquery.validate.min.js"/>"></script>
</head>

<body>
	<tiles:insertAttribute name="admin_help"/>
	<div id="wrapper">

		<tiles:insertAttribute name="admin_header" />
		<div id="page-wrapper">

			<tiles:insertAttribute name="admin_body" />
		</div>
	</div>
	
	
</body>

</html>
