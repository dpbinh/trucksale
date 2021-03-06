 <%@ page contentType="text/html; charset=UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="form-horizontal">
 
	<div class="form-group">
		<label for="old-password" class="col-sm-2 control-label">Mật khẩu cũ</label>
		<div class="col-sm-10">
			<input class="form-control" type="password" id="old-password" />
		</div>
	</div>
	<div class="form-group">
		<label for="new-password" class="col-sm-2 control-label">Mật khẩu mới</label>
		<div class="col-sm-10">
			<input class="form-control" type="password" id="new-password" />
		</div>
	</div>
	<div>
		<div class="form-group">
		<label for="retype-new-password" class="col-sm-2 control-label">Nhập lại mật khẩu mới</label>
		<div class="col-sm-10">
			<input class="form-control" type="password" id="retype-new-password" />
		</div>
	</div>
	<div class="form-group">
		<center><button id="btn-change" class="btn btn-primary">Thay Đổi</button></center>
	</div>
</div>
<script>
	$(function(){
		$('#btn-change').click(function(){
			var user = {
				password: $('#new-password').val(),
				oldPassword : $('#old-password').val()
			};
			var sms = check(user);
			if(sms == ""){
				confirm("Cẩn thận", "cẩn thận khi thay đổi mật khẩu", function(){
					$.ajax({
						url:"<c:url value="/admin/api/user/changepassword"/>",
						type: "POST",
						data: JSON.stringify(user),
						contentType : "application/json",
						success : function(data){
							if(data.success){
								location.href = "c:url value="/admin"/>";
							} else {
								showAlert("Lỗi", data.message);
							}
						}
					});
				});
				
			} else {
				showAlert(sms);
			}

		});
		
		function check(user){
			
			if(user.password == ""){
				return "Mật khẩu không được bỏ trống";
			}
			
			if(user.password.length < 8){
				return "mật khẩu phải từ 8 ký tự";
			}
			
			if($('#retype-new-password').val() != user.password){
				return "Mật khẩu nhập lại không khớp";
			}
			return "";
		}
	});
</script>