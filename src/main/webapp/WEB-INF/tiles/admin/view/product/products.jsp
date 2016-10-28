<%@ page contentType="text/html; charset=UTF-8"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			 <h1 class="page-header">Quản Lý Xe</h1>
			 <h3>
				 <span class="pull-left">Danh Sách Xe</span>
				 <button class="pull-right btn btn-primary"  data-toggle="modal" data-target="#new-product-model">Thêm Xe</button>
				 <div class="clearfix"></div>
			 </h3>
			 <table class="table table-bordered table-hover">
			 	<thead>
			 		<th width="30%">Hãng Sản Xuất</th>
			 		<th>Tên Xe</th>
			 		<th>Giá Xe</th>
			 		<th>Chức năng</th>
			 	</thead>
			 	<tbody id="products">
			 		
			 	</tbody>
			 </table>
		</div>
	</div>
</div>
<div class="modal fade" data-backdrop="static" id="new-product-model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
				<div class="form-horizontal">
					<div class="form-group">
						<label for="product-manufactor" class="col-sm-2 control-label">Nhà Sản Xuất</label>
						<div class="col-sm-10">
							<select class="form-control" id="product-manufactor">
								
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="product-name" class="col-sm-2 control-label">Tên Xe</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" id="product-name"/>
						</div>
					</div>
					<div class="form-group">
						<label for="product-price" class="col-sm-2 control-label">Giá Xe</label>
						<div class="col-sm-10">
							<input class="form-control"  onkeypress='return event.charCode >= 48 && event.charCode <= 57' type="text" id="product-price"/>
						</div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Đóng</button>
				<button type="button" class="btn btn-primary" id="save-product">Hoàn Thành</button>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		loadProduct();
		
		function loadProduct(){
			$.get("/api/product/products", function(data) {
				$('#products').html("");
				var tmpstr = "<tr><td>{0}</td><td><a target=_blank href='/admin/product/{1}'>{2}</a></td><td>{3}</td><td>"+
				"<button id='product-{1}' class='btn btn-danger'>Xóa</button></td></tr>";
				var tmp = $.validator.format(tmpstr);
				$.each(data.objects, function(key, value) {
					$.each(value.products, function(k, product) {
						$('#products').append(tmp(value.name, product.id, product.name, product.price));
						$('#product-'+product.id).click(function(){
							removeProduct(product.id);
						});
					});
				});
			});
		}
		
		function removeProduct(id){
			confirm("Cẩn thân", "Xóa xe sẽ làm dữ liệu của xe hiện tại mất vĩnh viễn, và phải nhập lại, cẩn thận trước khi xóa",
					function(){
				$.ajax({
					url: "/admin/api/product/" +id,
					type: "DELETE",
					success: function(data){
						if(data.success){
							loadProduct();
							showSuccessAlert("Thành Công", "Đã xóa xe thành công");
						} else {
							showSuccessAlert("Lỗi", "Xóa xe không thành công : " + data.message);
						}
					}
				});
			});
		}
		
		$('#new-product-model').on('shown.bs.modal', function() {
			$('#product-manufactor').html("");
			$('#product-name').html("");
			$('#product-price').html("");
			$.get("/api/product/productgroups", function(data){
				var tmp = $.validator.format("<option value='{0}'>{1}</option>");
				$.each(data.objects, function(key, value){
					$('#product-manufactor').append(tmp(value.id, value.name));
				});
			});
		});
		
		$('#save-product').click(function(){
			var product = {
				name : $('#product-name').val(),
				price : $('#product-price').val(),
				groupid : $('#product-manufactor').val()
			} ;
			 var t = JSON.stringify({"product": product});
			$.ajax({
				url : "/admin/api/product",
				type : "POST",
				data : JSON.stringify( product),
				contentType : "application/json",
				success: function(data){
					$('#new-product-model').modal('hide');
					if(data.success){
						loadProduct();
						showSuccessAlert("Thành Công","Đã thêm xe thành công");
					} else {
						showAlert("Lỗi", data.message);
					}
					
				}
			});

		});
	});
</script>