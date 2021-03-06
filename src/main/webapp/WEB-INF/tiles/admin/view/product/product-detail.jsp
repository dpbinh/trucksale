<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#img-show-selected-img').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
    }
}


</script>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<h1>Chi Tiết Xe</h1>
			<div class="form-horizontal">
				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<img alt="avatar" id="product-avatar" src="" height="150"></br></br>
						<button id="btn-upload-avatar" class="btn btn-primary">Đổi Ảnh</button>
						<span>Kích thước tối ưu 600 x 400 .jpg hoặc .png và không quá 2MB</span>
					</div>
				</div>
				<div class="divider"></div>
				<div class="form-group">
					<label for='product-name' class='col-sm-2 control-label'>Tên Xe</label>
					<div class="col-sm-10">
						<input type='text' class='form-control' id='product-name'>
					</div>
				</div>
				<div class="form-group">
					<label for='product-price' class='col-sm-2 control-label'>Giá Xe</label>
					<div class="col-sm-10">
						<input type='text' onkeypress='return event.charCode >= 48 && event.charCode <= 57' class='form-control' id='product-price'>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<center>
							<button id = "btn-update-quick-info" class="btn btn-primary">Lưu</button>
						</center>
					</div>
				</div>
				<div class="form-group">
					<label for='product-manufacture' class='col-sm-2 control-label'>Hãng Sản Xuất</label>
					<div class="col-sm-10">
						<div class="form-inline">
							<input type="text" class='form-control' id='product-manufacture' disabled/>
							<button class="btn" id="btn-update-manufacture-action" >Thay đổi</button>
							<input type="hidden" id="product-manufacture-id"/>
						</div>	
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div>
             	<ul class="nav nav-tabs tab" role="tablist">
					<li role="presentation" class="active"><a href="#detail" aria-controls="home" role="tab" data-toggle="tab">Thông Số Kỹ Thuật</a></li>
					<li role="presentation"><a href="#inside" aria-controls="profile" role="tab" data-toggle="tab">Nội Thất</a></li>
					<li role="presentation"><a href="#outside" aria-controls="messages" role="tab" data-toggle="tab">Ngoại Thất</a></li>
				</ul>
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="detail">
						<div class="form-horizontal">
<!-- .................................................................KICH THUOC .............................................................. -->
							<p>
								<h3>KÍCH THƯỚC</h3>
								<div class="form-group">
									<label for='overall_demension' class='col-sm-2 control-label'>Kích thước tổng thể (D x R x C)</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='overall_demension'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='inside_cargo_box_demension' class='col-sm-2 control-label'>Kích thước lọt lòng thùng (D x R x C)</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='inside_cargo_box_demension'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='front_rear_tread' class='col-sm-2 control-label'>Vệt bánh trước/Sau</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='front_rear_tread'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='wheel_base' class='col-sm-2 control-label'>Chiều dài cơ sở</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='wheel_base'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='ground_clearance' class='col-sm-2 control-label'>Khoảng sáng gầm xe</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='ground_clearance'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>

<!-- .................................................................TẢI TRỌNG .............................................................. -->
							<p>
								<h3>TẢI TRỌNG</h3>
								<div class="form-group">
									<label for='curb_weight' class='col-sm-2 control-label'>Trọng lượng không tải</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='curb_weight'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='load_weight' class='col-sm-2 control-label'>Tải trọng</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='load_weight'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='gross_weight' class='col-sm-2 control-label'>Trọng lượng toàn bộ</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='gross_weight'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='number_of_seats' class='col-sm-2 control-label'>Số chỗ ngồi</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='number_of_seats'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>
<!-- .................................................................ĐỘNG CƠ .............................................................. -->
							<p>
								<h3>ĐỘNG CƠ</h3>
								<div class="form-group">
									<label for='car_engine' class='col-sm-2 control-label'>Động Cơ</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='car_engine'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='engine_type' class='col-sm-2 control-label'>Loại</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='engine_type'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='displacement' class='col-sm-2 control-label'>Dung tích xilanh</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='displacement'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='diameter_x_piston_stroke' class='col-sm-2 control-label'>Đường kính x Hành trình piston</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='diameter_x_piston_stroke'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='max_power_rotation_speed' class='col-sm-2 control-label'>Công suất cực đại/Tốc độ quay</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='max_power_rotation_speed'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='max_torque_rotation_speed' class='col-sm-2 control-label'>Mômen xoắn cực đại/Tốc độ quay</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='max_torque_rotation_speed'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>
<!-- ................................................................. HỘP SỐ .............................................................. -->
							<p>
								<h3>HỘP SỐ</h3>
								<div class="form-group">
									<label for='clutch' class='col-sm-2 control-label'>Ly hợp</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='clutch'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='manual' class='col-sm-2 control-label'>Số tay</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='manual'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>
							
<!-- .................................................................HỆ THỐNG LÁI.............................................................. -->
							<p>
								<h3>HỆ THỐNG LÁI</h3>
								<div class="form-group">
									<label for='stearing_system' class='col-sm-2 control-label'>Hệ thống Lái</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='stearing_system'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>
							
<!-- .................................................................HỆ THỐNG PHANH.............................................................. -->
							<p>
								<h3>HỆ THỐNG PHANH</h3>
								<div class="form-group">
									<label for='brakes_system' class='col-sm-2 control-label'>Hệ thống phanh</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='brakes_system'>
									</div>
								 </div>

								<div class="divider"></div>
							</p>
<!-- .................................................................HỆ THỐNG TREO.............................................................. -->
							<p>
								<h3>HỆ THỐNG TREO</h3>
								<div class="form-group">
									<label for='front' class='col-sm-2 control-label'>Trước</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='front'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='rear' class='col-sm-2 control-label'>Sau</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='rear'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>						
<!-- .................................................................LỐP XE.............................................................. -->
							<p>
								<h3>LỐP XE</h3>
								<div class="form-group">
									<label for='front_rear' class='col-sm-2 control-label'>Trước/Sau</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='front_rear'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>

<!-- .................................................................LỐP XE.............................................................. -->
							<p>
								<h3>LỐP XE</h3>
								<div class="form-group">
									<label for='hill_climbing_ability' class='col-sm-2 control-label'>Khả năng leo dốc</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='hill_climbing_ability'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='minimum_turning_radius' class='col-sm-2 control-label'>Bán kính quay vòng nhỏ nhất</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='minimum_turning_radius'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='maximum_speed' class='col-sm-2 control-label'>Tốc độ tối đa</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='maximum_speed'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='capacity_fuel_tank' class='col-sm-2 control-label'>Dung tích thùng nhiên liệu</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='capacity_fuel_tank'>
									</div>
								 </div>
								<div class="divider"></div>
							</p>
<!-- .................................................................LỐP XE.............................................................. -->
							<p>
								<h3>LỐP XE</h3>
								<div class="form-group">
									<label for='seat_belt' class='col-sm-2 control-label'>Dậy Đai An Toàn</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='seat_belt'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='lock_door' class='col-sm-2 control-label'>Khóa Cửa An Toàn</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='lock_door'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='damping' class='col-sm-2 control-label'>Thanh Giảm Chấn</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='damping'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='brake_light' class='col-sm-2 control-label'>Đèn Báo Phanh</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='brake_light'>
									</div>
								 </div>
								 <div class="form-group">
									<label for='burgalar' class='col-sm-2 control-label'>Chống Trộm</label>
									<div class="col-sm-10">
										<input type='text' class='form-control' id='burgalar'>
									</div>
								 </div>
								 <div class="form-group">
								    <div class="col-sm-offset-2 col-sm-10">
								      <center><button id="btn-update-product-detail" class="btn btn-primary">Lưu</button></center>
								    </div>
								 </div>	
								<div class="divider"></div>
							</p>														
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="inside">
						<p>
							<button id="inside-add-img" class="btn btn-primary">Thêm</button>
 						</p>
						<table class="table">
							<thead>
								<th width="150">Chức Năng</th>
								<th>Ảnh</th>
							</thead>
							<tbody id="inside-container">
							</tbody>
						</table>
					</div>
					<div role="tabpanel" class="tab-pane" id="outside">
						<p>
							<button id="outside-add-img" class="btn btn-primary">Thêm</button>
						</p>
						<table class="table">
							<thead>
								<th width="150">Chức Năng</th>
								<th>Ảnh</th>
							</thead>
							<tbody id="outside-container">
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
<div class="modal fade" data-backdrop="static" id="select-img-dialog" tabindex="-1" role="dialog" aria-labelledby="SelectImg">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Cập Nhật Hình Ảnh</h4>
			</div>
			<div class="modal-body">
				<form id="select-file-form" class="form-horizontal">
					<div class="form-group">
						<label for='input-select-file' class='col-sm-2 control-label'>Ảnh</label>
						<div class="col-sm-10">
							<input type="file" id="selectedfile" name="selectedfile" class='form-control' accept="image/*"
							 onchange="readURL(this);" id='input-select-file' />
						</div>
					</div>
				</form>
				<center>
					<img id="img-show-selected-img" src="" height="100"/>
				</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				<button type="button" class="btn btn-primary" id="save-change-img">Lưu</button>
			</div>
		</div>
	</div>
</div>
 <div class="modal fade" data-backdrop="static" id="update-manufacture-form" tabindex="-1" role="dialog" aria-labelledby="manufacture">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" >Cập Nhật Nhà Sản Xuất</h4>
			</div>
			<div class="modal-body">
				<form  class="form-horizontal">
					<div class="form-group">
						<label for='manufacture-select' class='col-sm-2 control-label'>Tên Nhà Sản Xuất</label>
						<div class="col-sm-10">
							<select id="manufacture-select" class="form-control"></select>
						</div>	
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				<button type="button" class="btn btn-primary" id="btn-update-manufacture">Lưu</button>
			</div>
		</div>
	</div>
</div>
<script>
	var id = <c:out value="${id}"/>;
	$(function() {
		$.get("<c:url value="/api/product/"/>" + id, function(result) {
			var product = result.object;
			$('#product-avatar').attr('src', "<c:url value="/"/>" +product.img);
			$('#product-name').val(product.name);
			$('#product-price').val(product.price);
			$('#product-manufacture').val(product.productGroup.name);
			$('#product-manufacture-id').val(product.productGroup.id);
			$('#overall_demension').val(product.overallDemension);
			$('#inside_cargo_box_demension').val(product.insideCargoBoxDemension);
			$('#front_rear_tread').val(product.frontRearTread);
			$('#wheel_base').val(product.wheelBase);
			$('#ground_clearance').val(product.groundClearance);
			$('#curb_weight').val(product.curbWeight);
			$('#load_weight').val(product.loadWeight);
			$('#gross_weight').val(product.grossWeight);
			$('#number_of_seats').val(product.numberOfSeats);
			$('#car_engine').val(product.carEngine);
			$('#engine_type').val(product.engineType);
			$('#displacement').val(product.displacement);
			$('#diameter_x_piston_stroke').val(product.diameterPistonStroke);
			$('#max_power_rotation_speed').val(product.maxPowerRotationSpeed);
			$('#max_torque_rotation_speed').val(product.maxTorqueRotationSpeed);
			$('#clutch').val(product.clutch);
			$('#manual').val(product.manual);
			$('#stearing_system').val(product.stearingSystem);
			$('#brakes_system').val(product.brakesSystem);
			$('#front').val(product.front);
			$('#rear').val(product.rear);
			$('#front_rear').val(product.frontRear);
			$('#hill_climbing_ability').val(product.hillClimbingAbility);
			$('#minimum_turning_radius').val(product.minimumTurningRadius);
			$('#maximum_speed').val(product.maximumSpeed);
			$('#capacity_fuel_tank').val(product.capacityFuelTank);
			$('#seat_belt').val(product.seatBelt);
			$('#lock_door').val(product.lockDoor);
			$('#damping').val(product.damping);
			$('#brake_light').val(product.brakeLight);
			$('#burgalar').val(product.burgalar);
		});

		$.get("<c:url value="/api/product/resources/"/>" + id, function(data) {
			$('#inside-container').html("");
			$('#outside-container').html("");
			$.each(data.objects, function(key, value) {

				if (value.type == "INSIDE") {
					buildResource('#inside-container', value);
				} else if (value.type == "OUTSIDE") {
					buildResource('#outside-container', value);
				}
			});
		});

		$('#btn-upload-avatar').click(function() {
			var url = uploadaction = "<c:url value="/admin/api/product/avatar/"/>" + id;
			uploadImg(url, function(data) {
				$('#product-avatar').attr('src', "<c:url value="/"/>" + data.object);
			});
		});
		
		$('#btn-update-quick-info').click(function(){
			confirm("Cẩn thận", "có chắc bạn muốn cấp nhật", function(){
				var qinfo = {
					name : $('#product-name').val(),
					price : $('#product-price').val()
				};
					
				$.ajax({
					url: "<c:url value="/admin/api/product/quickinfo/"/>" + id,
					type : "PUT",
					data : JSON.stringify(qinfo),
					contentType : "application/json",
					success: function(data){
						if(data.success){
							showSuccessAlert("Thành Công", "Cập nhật thành công");
						} else {
							showSuccessAlert("Lỗi", "Cập nhật không thành công : " + data.message);
						}
					}
				});
			});
		});
		
		$('#btn-update-product-detail').click(function(){
			confirm("Cẩn thận", "có chắc bạn muốn cấp nhật", function(){
				var product = {
					overallDemension: 			$('#overall_demension').val(),
					insideCargoBoxDemension :	$('#inside_cargo_box_demension').val(),
					frontRearTread:				$('#front_rear_tread').val(),
					wheelBase:					$('#wheel_base').val(),
					groundClearance: 			$('#ground_clearance').val(),
					curbWeight:					$('#curb_weight').val(),
					loadWeight:					$('#load_weight').val(),
					grossWeight:				$('#gross_weight').val(),
					numberOfSeats:				$('#number_of_seats').val(),
					carEngine:					$('#car_engine').val(),
					engineType:					$('#engine_type').val(),
					displacement:				$('#displacement').val(),
					diameterPistonStroke:		$('#diameter_x_piston_stroke').val(),
					maxPowerRotationSpeed:		$('#max_power_rotation_speed').val(),
					maxTorqueRotationSpeed:		$('#max_torque_rotation_speed').val(),
					clutch:						$('#clutch').val(),
					manual:						$('#manual').val(),
					stearingSystem:				$('#stearing_system').val(),
					brakesSystem:				$('#brakes_system').val(),
					front:						$('#front').val(),
					rear:						$('#rear').val(),
					frontRear:					$('#front_rear').val(),
					hillClimbingAbility:		$('#hill_climbing_ability').val(),
					minimumTurningRadius:		$('#minimum_turning_radius').val(),
					maximumSpeed:				$('#maximum_speed').val(),
					capacityFuelTank:			$('#capacity_fuel_tank').val(),
					seatBelt:					$('#seat_belt').val(),
					lockDoor:					$('#lock_door').val(),
					damping:					$('#damping').val(),
					brakeLight:					$('#brake_light').val(),
					burgalar:					$('#burgalar').val()	
				};
				$.ajax({
					url: "<c:url value="/admin/api/product/detail/"/>" + id,
					type : "PUT",
					data : JSON.stringify(product),
					contentType : "application/json",
					success: function(data){
						if(data.success){
							showSuccessAlert("Thành Công", "Cập nhật thành công");
						} else {
							showSuccessAlert("Lỗi", "Cập nhật không thành công : " + data.message);
						}
					}
				});
				
			});
				
		})
		
		$('#btn-update-manufacture-action').click(function(){
			$('#manufacture-select').html("");
			$.get("<c:url value="/api/product/productgroups"/>", function(data){
				var tmp = $.validator.format("<option value='{0}' {2}>{1}</option>");
				var selectedId = $('#product-manufacture-id').val();
				$.each(data.objects, function(key, value){
					var selected = value.id == selectedId ? "selected":"";
					$('#manufacture-select').append(tmp(value.id, value.name, selected));
				});
			});
			var updateManufacture = function(){
				$('#btn-update-manufacture').unbind("click", updateManufacture );
				$('#update-manufacture-form').modal('hide');
				confirm("Cẩn thận", "Có chắc bạn muốn cập nhật nhà sản xuất", function(){
					$.ajax({
						url: "<c:url value="/admin/api/product/group/"/>" + id + "/" + $('#manufacture-select').val(),
						type: "PUT",
						success: function(data){
							if(data.success){
								$('#product-manufacture').val($('#manufacture-select option:selected').text());
								$('#product-manufacture-id').val($('#manufacture-select').val());
								showSuccessAlert("Thành Công", "Cập nhật thành công");
							} else {
								showSuccessAlert("Lỗi", "Cập nhật không thành công : " + data.message);
							}
						}
					});
				});
			}
			$('#update-manufacture-form').modal('show');
			$('#btn-update-manufacture').bind("click", updateManufacture );
		});
		

		$('#inside-add-img').click(function() {
			var url = "<c:url value="/admin/api/product/insideresource/"/>" + id;
			uploadImg(url, function(data) {
				buildResource('#inside-container', data.object);
			});
		});
		
		$('#outside-add-img').click(function() {
			var url = "<c:url value="/admin/api/product/outsideresource/"/>" + id;
			uploadImg(url, function(data) {
				buildResource('#outside-container', data.object);
			});
		});
 
		function buildResource(el, value) {
			var tmp = $.validator
					.format("<tr class='{0}'><td><button id='{0}' class='btn btn-danger'>Xóa</button></td><td><img src='<c:url value="/{1}"/>' width='200' /></td></tr>");
			$(el).append(tmp(value.id, value.path));
			 
			$('#'+value.id).click(function(){
				removeResource(value.name , value.type, function(){
					$('.'+value.id).remove();
				});
			});
		}
		
		function removeResource(name, type, completed) {
	 		confirm("Cẩn Thận", "Có chắc bạn muốn xóa ảnh này", function(){
	 			$.ajax({
					url:"<c:url value="/admin/api/product/resource/"/>" + id +"/" + name+"/" + type,
					type: "DELETE",
					success: function(data){
						completed();
					}
				});
	 		});
		}
		
		function uploadImg(url, completed) {

			$('#selectedfile').val("");
			$('#img-show-selected-img').attr('src', "");
			$('#select-img-dialog').modal('show');
			var uploadFunction = function() {
				var status = checkfile($("#selectedfile")[0]);
				if (status == "") {
					$.ajax({
						url : url,
						type : "POST",
						data : new FormData($("#select-file-form")[0]),
						enctype : 'multipart/form-data',
						processData : false,
						contentType : false,
						cache : false,
						success : function(data) {
							completed(data);
							$('#select-img-dialog').modal('hide');
							$('#save-change-img').unbind("click", uploadFunction);
						},
					});
				} else {
					$('#select-img-dialog').modal('hide');
					showAlert("Lỗi dữ liệu", status);
				}
			}
			$('#save-change-img').bind("click", uploadFunction);
		}

		function checkfile(file) {
			var name = file.value;
			var validExts = new Array(".jpg", ".png", ".JPG", ".PNG");
			var fileExt = name.substring(name.lastIndexOf('.'));
			if (validExts.indexOf(fileExt) < 0) {
				return "File ảnh này không được hỗ trợ";
			}

			if (file.files[0].size > 2097152) {
				return "File lớn hơn 2MB không thể upload";
			}

			return "";
		}
	 
	});

</script>