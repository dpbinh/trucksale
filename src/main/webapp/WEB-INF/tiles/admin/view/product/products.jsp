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
			 	</thead>
			 	<tbody id="products">
			 		
			 	</tbody>
			 </table>
		</div>
	</div>
</div>
<div class="modal fade" id="new-product-model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
							<input class="form-control" type="text" id="product-price"/>
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
		$.get("/api/products", function(data) {
			$('#products').html("");
			var tmpstr = "<tr><td>{0}</td><td><a target=_blank href='/admin/product/{1}'>{2}</a></td><td>{3}</td></td>";
			var tmp = $.validator.format(tmpstr);
			$.each(data.objects, function(key, value) {
				$.each(value.products, function(k, product) {
					$('#products').append(
							tmp(value.name, product.id, product.name, product.price));
				});
			});
		});

		$('#new-product-model').on('shown.bs.modal', function() {
			$('#product-manufactor').html("");
			$('#product-name').html("");
			$('#product-price').html("");
			$.get("/api/productgroups", function(data){
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
					alert(data.message);
				}
			});

		});
	});
</script>