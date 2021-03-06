<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="work" >
    <div class="container">
       
        
        <div class="row animate-in" data-anim-type="fade-in-up">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="product-detail-wrapper">
                    <div class="row">
                        <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                            <div class="product-quick-show">
                                <a class="fancybox-media" title="Image Title Goes Here">
                                    <img id="product-avatar" class="img-responsive img-rounded" alt="Truck Avatar" />
                                </a>
                            </div> 
                        </div>
                        <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                            <div class="product-quick-show">
                                <h2><strong  id="product-name"></strong></h2>
                                <h2><strong id="product-price"></strong></h2>
                                <table class="table table-spec">
                                    <tr>
                                        <td><strong>Hãng Sản Xuất:</strong></td>
                                        <td ><strong id="product-manufacture"></strong></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Động cơ:</strong></td>
                                        <td id="q-car_engine"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Tải trọng:</strong></td>
                                        <td id="q-load_weight"></td>
                                    </tr>
                                    <tr>
                                        <td><strong>Kích thước lọt lòng thùng</strong></td>
                                        <td id="q-inside_cargo_box_demension"></td>
                                    </tr>
                                </table>
                            </div>                                              
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="product-detail">
                              <ul class="nav nav-tabs tab" role="tablist">
                                <li role="presentation" class="active"><a href="#detail" aria-controls="home" role="tab" data-toggle="tab">Thông Số Kỹ Thuật</a></li>
                                <li role="presentation"><a href="#inside" aria-controls="profile" role="tab" data-toggle="tab">Nội Thất</a></li>
                                <li role="presentation"><a href="#outside" aria-controls="messages" role="tab" data-toggle="tab">Ngoại Thất</a></li>
                              </ul>
                              <div class="tab-content detail-content">
                                <div role="tabpanel" class="tab-pane active" id="detail">
                                    
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#demension" aria-expanded="false" aria-controls="demension">
                                      KÍCH THƯỚC
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="demension">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Kích thước tổng thể (D x R x C)</td>
                                                <td width="30%">Overall dimension</td>
                                                <td id="overall_demension"></td>
                                            </tr>
                                            <tr>
                                                <td>Kích thước lọt lòng thùng (D x R x C)</td>
                                                <td>Inside cargo box dimension</td>
                                                <td id="inside_cargo_box_demension"></td>
                                            </tr>
                                            <tr>
                                                <td>Vệt bánh trước/Sau</td>
                                                <td>Front/Rear tread</td>
                                                <td id="front_rear_tread"></td>
                                            </tr>
                                            <tr>
                                                <td>Chiều dài cơ sở</td>
                                                <td>Wheelbase</td>
                                                <td id="wheel_base"></td>
                                            </tr>
                                            <tr>
                                                <td>Khoảng sáng gầm xe</td>
                                                <td>Ground clearance</td>
                                                <td id="ground_clearance"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#weight" aria-expanded="false" aria-controls="weight">
                                      TẢI TRỌNG
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="weight">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Trọng lượng không tải</td>
                                                <td width="30%">Curb weight</td>
                                                <td id="curb_weight"></td>
                                            </tr>
                                            <tr>
                                                <td>Tải trọng</td>
                                                <td>Load weight</td>
                                                <td id="load_weight"></td>
                                            </tr>
                                            <tr>
                                                <td>Trọng lượng toàn bộ</td>
                                                <td>Gross weight</td>
                                                <td id="gross_weight"></td>
                                            </tr>
                                            <tr>
                                                <td>Số chỗ ngồi</td>
                                                <td>Number of seats</td>
                                                <td id="number_of_seats"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#engine" aria-expanded="false" aria-controls="engine">
                                      ĐỘNG CƠ
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="engine">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Động Cơ</td>
                                                <td width="30%">Engine</td>
                                                <td id="car_engine"></td>
                                            </tr>
                                            <tr>
                                                <td>Loại</td>
                                                <td>Type</td>
                                                <td id="engine_type"></td>
                                            </tr>
                                            <tr>
                                                <td>Dung tích xilanh</td>
                                                <td>Displacement</td>
                                                <td id="displacement"></td>
                                            </tr>
                                            <tr>
                                                <td>Đường kính x Hành trình piston</td>
                                                <td>Diameter x Piston stroke</td>
                                                <td id="diameter_x_piston_stroke"></td>
                                            </tr>
                                            <tr>
                                                <td>Công suất cực đại/Tốc độ quay</td>
                                                <td>Max power/Rotation speed</td>
                                                <td id="max_power_rotation_speed"></td>
                                            </tr>
                                            <tr>
                                                <td>Mômen xoắn cực đại/Tốc độ quay</td>
                                                <td>Max torque/Rotation speed</td>
                                                <td id="max_torque_rotation_speed"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#gear" aria-expanded="false" aria-controls="gear">
                                      HỘP SỐ
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="gear">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Ly hợp</td>
                                                <td width="30%">Clutch</td>
                                                <td id="clutch"></td>
                                            </tr>
                                            <tr>
                                                <td>Số tay</td>
                                                <td>Manual</td>
                                                <td id="manual"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#steering" aria-expanded="false" aria-controls="steering">
                                      HỆ THỐNG LÁI
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="steering">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">HỆ THỐNG LÁI</td>
                                                <td width="30%">STEERING SYSTEM</td>
                                                <td id="stearing_system"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#brake" aria-expanded="false" aria-controls="brake">
                                      HỆ THỐNG PHANH
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="brake">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">HỆ THỐNG PHANH</td>
                                                <td width="30%">BRAKES SYSTEM</td>
                                                <td id="brakes_system"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#hangsystem" aria-expanded="false" aria-controls="brake">
                                      HỆ THỐNG TREO
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="hangsystem">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Trước</td>
                                                <td width="30%">Front</td>
                                                <td id="front"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Sau</td>
                                                <td width="30%">Rear</td>
                                                <td id="rear"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#tire" aria-expanded="false" aria-controls="brake">
                                      LỐP XE
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="tire">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Trước/Sau</td>
                                                <td width="30%">Front/Rear</td>
                                                <td id="front_rear"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#ability" aria-expanded="false" aria-controls="brake">
                                      ĐẶC TÍNH
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="ability">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Khả năng leo dốc</td>
                                                <td width="30%">Hill-climbing ability</td>
                                                <td id="hill_climbing_ability"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Bán kính quay vòng nhỏ nhất</td>
                                                <td width="30%">Minimum turning radius</td>
                                                <td id="minimum_turning_radius"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Tốc độ tối đa</td>
                                                <td width="30%">Maximum speed</td>
                                                <td id="maximum_speed"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Dung tích thùng nhiên liệu</td>
                                                <td width="30%">Capacity fuel tank</td>
                                                <td id="capacity_fuel_tank"></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <a class="collapse-title collapsed" role="button" data-toggle="collapse" href="#safe" aria-expanded="false" aria-controls="brake">
                                      AN TOÀN
                                    </a>
                                    <div class="collapse collapse-content table-responsive" id="safe">
                                        <table class="table table-spec" >
                                            <tr>
                                                <td width="35%">Dâ Đai An Toàn</td>
                                                <td width="30%">seatbelt</td>
                                                <td id="seat_belt"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Khóa Cửa An Toàn</td>
                                                <td width="30%">lock door</td>
                                                <td id="lock_door"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Thanh Giảm Chấn</td>
                                                <td width="30%">Damping</td>
                                                <td id="damping"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Đèn Báo Phanh</td>
                                                <td width="30%">Brake lights</td>
                                                <td id="brake_light"></td>
                                            </tr>
                                            <tr>
                                                <td width="35%">Chống Trộm</td>
                                                <td width="30%">Burglar</td>
                                                <td id="burgalar"></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="inside">
                               		<div id="inside-container"></div>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="outside">
                                	<div id="outside-container"></div>
                                  
                                  </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>   
            </div>      
        </div>
    </div>
</section>

<script>
	var id = <c:out value="${id}"/>;
	$(function() {
		$.get("<c:url value="/api/product/"/>" + id, function(result) {
			var product = result.object;
			$('#product-avatar').attr('src', "<c:url value="/"/>" + product.img);
			$('#product-name').html(product.name);
			$('#product-price').html(moneyFormat(product.price));
			$('#product-manufacture').html(product.productGroup.name);
			$('#product-manufacture-id').html(product.productGroup.id);
			$('#overall_demension').html(product.overallDemension);
			$('#inside_cargo_box_demension').html(product.insideCargoBoxDemension);
			$('#q-inside_cargo_box_demension').html(product.insideCargoBoxDemension);
			$('#front_rear_tread').html(product.frontRearTread);
			$('#wheel_base').html(product.wheelBase);
			$('#ground_clearance').html(product.groundClearance);
			$('#curb_weight').html(product.curbWeight);
			$('#load_weight').html(product.loadWeight);
			$('#q-load_weight').html(product.loadWeight);
			$('#gross_weight').html(product.grossWeight);
			$('#number_of_seats').html(product.numberOfSeats);
			$('#car_engine').html(product.carEngine);
			$('#q-car_engine').html(product.carEngine);
			$('#engine_type').html(product.engineType);
			$('#displacement').html(product.displacement);
			$('#diameter_x_piston_stroke').html(product.diameterPistonStroke);
			$('#max_power_rotation_speed').html(product.maxPowerRotationSpeed);
			$('#max_torque_rotation_speed').html(product.maxTorqueRotationSpeed);
			$('#clutch').html(product.clutch);
			$('#manual').html(product.manual);
			$('#stearing_system').html(product.stearingSystem);
			$('#brakes_system').html(product.brakesSystem);
			$('#front').html(product.front);
			$('#rear').html(product.rear);
			$('#front_rear').html(product.frontRear);
			$('#hill_climbing_ability').html(product.hillClimbingAbility);
			$('#minimum_turning_radius').html(product.minimumTurningRadius);
			$('#maximum_speed').html(product.maximumSpeed);
			$('#capacity_fuel_tank').html(product.capacityFuelTank);
			$('#seat_belt').html(product.seatBelt);
			$('#lock_door').html(product.lockDoor);
			$('#damping').html(product.damping);
			$('#brake_light').html(product.brakeLight);
			$('#burgalar').html(product.burgalar);
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
		
		function buildResource(el, value) {
			var tmp = $.validator.format("<p><img src='<c:url value="/{0}"/>' class='img-responsive' alt='' /></p>");
			$(el).append(tmp(value.path));
		}
	});
</script>