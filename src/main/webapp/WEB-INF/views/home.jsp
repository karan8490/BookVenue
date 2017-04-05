<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>

<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="resources/script/turn.min.js"></script>

<style type="text/css">
body{
	/* background:#ccc; */
}
#magazine{
	width:1080px;
	height:650px;
}
#magazine .turn-page{
	background-color:#ccc;
	background-size:100% 100%;
}
</style>
</head>
<body>

<div id="magazine" style="margin-left:8%">
	<div style="background-image:url('https://a0.muscache.com/im/pictures/c6f826a6-71ef-4668-9d46-a394f4dc636b.jpg?aki_policy=poster');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/7bff51c1-3c35-47a5-a86c-5ea75ab6be6c.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/04598d26-f40d-4c44-8725-99e157fbb7ab.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/d915ce17-d822-426d-b549-0c7b641fec56.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/ebbb24af-52d6-490c-89e9-16cc560140e8.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/1d8ecdb4-da01-4d35-9c9e-2ef6ca604eca.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
</div>


<script type="text/javascript">
	$(window).ready(function() {
		$('#magazine').turn({
							display: 'double',
							acceleration: true,
							gradients: !$.isTouch,
							elevation:30,
							autocenter:true,
							when: {
								turned: function(e, page) {
									console.log('Current view: ', $(this).turn('view'));
								}
							}
						});
	});
	
	$("#magazine").bind("ontouchstart", function(event, pageObject, corner) {
	});

	$(window).bind('keydown', function(e){
		if (e.keyCode==39)
			$('#magazine').turn('previous');
		else if (e.keyCode==37)
			$('#magazine').turn('next');
			
	});
</script>

</body>
</html>