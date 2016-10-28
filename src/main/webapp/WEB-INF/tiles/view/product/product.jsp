<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section id="work" >
    <div class="container">
        <div class="row text-center header animate-in" data-anim-type="fade-in-up">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <h3><strong id="manufacture-name">HYUNDAI</strong></h3>
                <hr />
            </div>
        </div>
        
        <div class="row text-center animate-in" data-anim-type="fade-in-up" id="trucks-container">
              
        </div>
     
    </div>
</section>

<script>
	function moneyFormat(price, sign = ' VNĐ ') {
	  const pieces = parseFloat(price).toFixed(2).split('')
	  let ii = pieces.length - 3
	  while ((ii-=3) > 0) {
	    pieces.splice(ii, 0, ',')
	  }
	  return   pieces.join('') + sign
	}

	var id = <c:out value="${id}"/>;
	$(function(){
		$.get("/api/product/group/" + id , function(data){
			$('#manufacture-name').html(data.object.name);
		});
		
		$.get("/api/product/products/"+ id, function(data){
			var tmps = "<div class='col-xs-6 col-sm-4 col-md-4 col-lg-4'>"+
				        	"<div class='work-wrapper'>"+
				        		"<a class='fancybox-media' title='Image Title Goes Here' href='{0}'>"+
				            		"<img src='{0}' class='img-responsive img-rounded' alt='' />"+
				        		"</a>"+
				        		"<h4>{1}</h4>"+
				        		"<h2><strong>{2}</strong></h2>"+
				    		"</div>"+
				    	"</div>";
			var tmp = $.validator.format(tmps);
			$('#trucks-container').html("");
			$.each(data.objects, function(key, value){
				$('#trucks-container').append(tmp(value.img, value.name, moneyFormat(value.price)));
			});
		});
	});
</script>