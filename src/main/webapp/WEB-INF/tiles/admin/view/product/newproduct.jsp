<%@ page contentType="text/html; charset=UTF-8"%>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<div class="form-horizontal">
				<div id="new_product">
					
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">Sign in</button>
				    </div>
				 </div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function(){
		$.get("/api/specification", function(data){
			$('#new_product').html("");
			var spectmpstr ="<div class='form-group'>" +
								"<label for='{0}' class='col-sm-2 control-label'>{1}</label>"+
			    				"<div class='col-sm-10'>"+
			      					"<input type='text' class='form-control' id='{1}'>"+
			   					"</div>"+
			  				"</div>";
			var spectmp = $.validator.format(spectmpstr);
			var grouptmp = $.validator.format("<p><h3>{0}</h3>{1}</p><div class='divider'></div>");
			var text = "";
			$.each(data.objects, function(key, value){
				var specifications = value.specifications;
				var specs = ""
				for(i in value.specifications){
					var spec = specifications[i];
					specs += spectmp(spec.id, spec.name);	
				}
				
				$('#new_product').append(grouptmp(value.name, specs));
			});
		});
	});
</script>