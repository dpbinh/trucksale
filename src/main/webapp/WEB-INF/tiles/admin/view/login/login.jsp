 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
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
    <div class="login-panel">
        <div class="login-logo">
            <center>
                <h3>OTO Tải Biên Hòa</h3>
            </center>
        </div>
        <div class="login-body">
            <div class="login-title"><strong>Xin Chào</strong>, Vui lòng đăng nhập</div>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="text" id="username" class="form-control" placeholder="Username">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="password" id="password" class="form-control" placeholder="Password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <center><button id="btnLogin" class="btn btn-info">Log In</button></center>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
	    $(function () {
	        $('body').keypress(function (e) {
	            if (e.which == 13) {
	                $('#btnLogin').click();
	            }
	        });
	
	        $('#btnLogin').click(function () {
	            
	            
	            var valid = validate();
	            if (valid != "") {
	                alert(valid);
	            } else {
	                var user = {
	                    username: $('#username').val(),
	                    password: $('#password').val()
	                };
	     
	                $.ajax({
	                	url : "<c:url value="/admin/api/user/login"/>",
	                	type : "POST",
	    				data : JSON.stringify( user),
	    				contentType : "application/json",
	    				success : function(data){
	    					if(data.success){
	    						location.href = "<c:url value="/admin/products"/>";
	    					} else {
	    						showAlert("Lỗi đang nhập", data.message);
	    					}
	    				}
	                });
	            }
	     
	        });
	
	        function validate() {
	            var username = $('#username').val();
	            var pass = $('#password').val();
	            var result = "";
	
	            if (username.trim().length <= 0) {
	               result += "User Name can not empty \n";
	            }
	
	            if (pass.trim().length <= 0) {
	                result +=  "Password can not empty \n";
	            }
	
	            return result;
	        }
	
	    });
    </script>
</body>
</html>

