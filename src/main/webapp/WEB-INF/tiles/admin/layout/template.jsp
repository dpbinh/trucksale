<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title><tiles:getAsString name="admin_title" /></title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="/static/css/bootstrap.css" rel="stylesheet" />
<link href="/static/css/sb-admin.css" rel="stylesheet">
<link href="/static/css/font-awesome.css" rel="stylesheet" />

</head>

<body>

	<div id="wrapper">

		<tiles:insertAttribute name="admin_header" />
		<div id="page-wrapper">

			<tiles:insertAttribute name="admin_body" />
		</div>
	</div>

	<script src="/static/js/jquery-1.11.1.js"></script>
	<script src="/static/js/bootstrap.js"></script>

</body>

</html>
