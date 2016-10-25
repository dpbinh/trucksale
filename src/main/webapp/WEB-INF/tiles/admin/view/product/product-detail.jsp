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
						<span>Kích thước tối ưu 600 x 400 .jpg hoac .png và không quá 2MB</span>
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
						<input type='text' class='form-control' id='product-price'>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<center>
							<button type="submit" class="btn btn-primary">Lưu</button>
						</center>
					</div>
				</div>
				<div class="form-group">
					<label for='product-manufacture' class='col-sm-2 control-label'>Hãng Sản Xuất</label>
					<div class="col-sm-10">
						<div class="form-inline">
							<input type="text" class='form-control' id='product-manufacture' disabled/>
							<button class="btn" >Thay đổi</button>
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
								      <center><button type="submit" class="btn btn-primary">Lưu</button></center>
								    </div>
								 </div>	
								<div class="divider"></div>
							</p>														
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="inside">
						<button id="inside-add-img">Thêm</button>
						<div id="inside-container"></div>
					</div>
					<div role="tabpanel" class="tab-pane" id="outside">
						<button id="outside-add-img">Thêm</button>
						<div id="outside-container"></div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
<div class="modal fade" id="select-img-dialog" tabindex="-1" role="dialog" aria-labelledby="SelectImg">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Thêm Xe</h4>
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
<div style="display:none"><c:out value="${id}"/></div>
<script>
	 $(function(){

		var id = <c:out value="${id}"/>;
 		 
 		
		$.get("/api/product/"+id, function(result){
			var product = result.object;
			$('#product-avatar').attr('src', product.img);
			$('#product-name').val(product.name);
			$('#product-price').val(product.price);
			$('#product-manufacture').val(product.productGroup.name);
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
			$('#seat_belt').val(product.brakeLight);
			$('#lock_door').val(product.burgalar); 
		});
		
		$('#btn-upload-avatar').click(function(){
			$('#input-select-file').val("");
			$('#img-show-selected-img').attr('src', "");
			var url = uploadaction = "/admin/api/product/avatar/" + id;
			uploadImg(url, function(data){
				$('#product-avatar').attr('src', data.object);
			});
		});
		
		function uploadImg(url, success){
			$('#select-img-dialog').modal('show');
			$('#save-change-img').click(function(){
				var status = checkfile($("#selectedfile")[0]);
				if(status == ""){
					$.ajax({
				        url: uploadaction,
				        type: "POST",
				        data: new FormData($("#select-file-form")[0]),
				        enctype: 'multipart/form-data',
				        processData: false,
				        contentType: false,
				        cache: false,
				        success: function (data) {
				        	success(data);
				        	$('#select-img-dialog').modal('hide');
				        },
				     });
				} else {
					$('#select-img-dialog').modal('hide');
					showAlert("Lỗi dữ liệu", status);
				}
			});
		}
		 
		function checkfile( file) {
			var name = file.value;
		    var validExts = new Array(".jpg", ".png", ".JPG", ".PNG");
		    var fileExt = name.substring(name.lastIndexOf('.'));
		    if (validExts.indexOf(fileExt) < 0) {
		      return "File ảnh này không được hỗ trợ";
		    }
		    
		    if(file.files[0].size > 2097152){
		    	return "File lớn hơn 2MB không thể upload";
		    }
		    
		    return "";
		}
		
		$('#inside').click(function(){
			
		});
		
		$('#outside').click(function(){
			
		});
	 });
</script>