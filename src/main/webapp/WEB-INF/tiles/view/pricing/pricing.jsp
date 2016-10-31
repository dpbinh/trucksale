<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="team" >
    <div class="container">
        <div class="row text-center header animate-in" data-anim-type="fade-in-up">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h3>BẢNG GIÁ</h3><hr />
            </div>
        </div>
        
        <div class="row animate-in" data-anim-type="fade-in-up">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="price-wrapper" id="pricing-container">
                    
                </div>
            </div>
        </div>
    </div>
</section>

<script>
$(function(){
	$.get("<c:url value="/api/product/pricing"/>", function(data){
		$('#pricing-container').html("");
		var headtmp= $.validator.format("<h3><center>{0}</center></h3>");
		var containertmp = $.validator.format(" <div class='table-responsive'> <table class='table'>{0}</table></div>");
		var itemtmp = $.validator.format("<tr><td width='30%'><a href='<c:url value="/detail/{3}"/>'><img class='price-logo' src='<c:url value="/{0}"/>'/></a></td><td width='50%'>{1}</td><td>{2}</td></tr>");
		
		$.each(data.objects, function(key, pricing){
			if(pricing.products.length > 0){
				var header = headtmp(pricing.group);
				
				var content = "";
				for(x in pricing.products){
					var product = pricing.products[x];
					content += itemtmp(product.img, product.name, moneyFormat(product.price), product.id);
				}
				var pricingtb = containertmp(content);
				$('#pricing-container').append(header);
				$('#pricing-container').append(pricingtb);
			}
			
		});
	});
});

</script>