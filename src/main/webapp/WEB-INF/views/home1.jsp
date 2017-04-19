<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>

<html>
<head>
<script type="text/javascript" src="resources/script/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="resources/script/turn.min.js"></script>
<script type="text/javascript" src="resources/script/steve-jobs.js"></script>
<link href="./resources/styles/home-page.css" rel="stylesheet">
<link href="./resources/styles/jquery.ui.css" rel="stylesheet">
<link href="./resources/styles/jquery.ui.html4.css" rel="stylesheet">
<link href="./resources/styles/steve-jobs.css" rel="stylesheet">
<link href="./resources/styles/steve-jobs-html4.css" rel="stylesheet">
<!-- <style type="text/css">
body{
	/* background:#ccc; */
}
#magazine{
	width:80%;
	height:70%;
}
#magazine .turn-page{
	background-color:#ccc;
	background-size:100% 100%;
}
</style> -->
</head>
<body>
<p></p><br><br><p></p>
<div id="canvas">
	<div id="book-zoom">
		<div class="sj-book">
			<div depth="5" class="hard"> <div class="side"></div> </div>
			<div depth="5" class="hard front-side"> <div class="depth"></div> </div>
			<div class="own-size"></div>
			<div class="own-size even"></div>
			<div class="hard fixed back-side p111"> <div class="depth"></div> </div>
			<div class="hard p112"></div>
		</div>
	</div>
	<div id="slider-bar" class="turnjs-slider">
		<div id="slider"></div>
	</div>
</div>
<div class="gradient"></div>

</div>

<!-- <div id="magazine" style="marugin-left:8%">
	<div style="background-image:url('https://a0.muscache.com/im/pictures/c6f826a6-71ef-4668-9d46-a394f4dc636b.jpg?aki_policy=poster');"></div>
	<div >This is test content 
		<ul>
			<li>test1</li>
			<li>test1</li>
			<li>test1</li>
			<li>test1</li>
			<li>test1</li>
			<li>test1</li>
			<li>test1</li>
		</ul>
	</div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/04598d26-f40d-4c44-8725-99e157fbb7ab.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/d915ce17-d822-426d-b549-0c7b641fec56.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/ebbb24af-52d6-490c-89e9-16cc560140e8.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
	<div style="background-image:url('https://a0.muscache.com/ac/pictures/1d8ecdb4-da01-4d35-9c9e-2ef6ca604eca.jpg?interpolation=lanczos-none&size=large&output-format=jpg&output-quality=70');"></div>
</div> -->


<!-- <script type="text/javascript">
	$(window).ready(function() {
		$('#magazine').turn({
							display: 'double',
							acceleration: true,
							gradients: !$.isTouch,
							elevation:30,
							/*autocenter:true,*/
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
 -->
 <script type="text/javascript">
 function loadApp() {
	
	var flipbook = $('.sj-book');

	// Check if the CSS was already loaded
	
	if (flipbook.width()==0 || flipbook.height()==0) {
		setTimeout(loadApp, 10);
		return;
	}

	// Mousewheel

	$('#book-zoom').mousewheel(function(event, delta, deltaX, deltaY) {

		var data = $(this).data(),
			step = 30,
			flipbook = $('.sj-book'),
			actualPos = $('#slider').slider('value')*step;

		if (typeof(data.scrollX)==='undefined') {
			data.scrollX = actualPos;
			data.scrollPage = flipbook.turn('page');
		}

		data.scrollX = Math.min($( "#slider" ).slider('option', 'max')*step,
			Math.max(0, data.scrollX + deltaX));

		var actualView = Math.round(data.scrollX/step),
			page = Math.min(flipbook.turn('pages'), Math.max(1, actualView*2 - 2));

		if ($.inArray(data.scrollPage, flipbook.turn('view', page))==-1) {
			data.scrollPage = page;
			flipbook.turn('page', page);
		}

		if (data.scrollTimer)
			clearInterval(data.scrollTimer);
		
		data.scrollTimer = setTimeout(function(){
			data.scrollX = undefined;
			data.scrollPage = undefined;
			data.scrollTimer = undefined;
		}, 1000);

	});

	// Slider

	$( "#slider" ).slider({
		min: 1,
		max: 100,

		start: function(event, ui) {

			if (!window._thumbPreview) {
				_thumbPreview = $('<div />', {'class': 'thumbnail'}).html('<div></div>');
				setPreview(ui.value);
				_thumbPreview.appendTo($(ui.handle));
			} else
				setPreview(ui.value);

			moveBar(false);

		},

		slide: function(event, ui) {

			setPreview(ui.value);

		},

		stop: function() {

			if (window._thumbPreview)
				_thumbPreview.removeClass('show');
			
			$('.sj-book').turn('page', Math.max(1, $(this).slider('value')*2 - 2));

		}
	});


	// URIs
	
	Hash.on('^page\/([0-9]*)$', {
		yep: function(path, parts) {

			var page = parts[1];

			if (page!==undefined) {
				if ($('.sj-book').turn('is'))
					$('.sj-book').turn('page', page);
			}

		},
		nop: function(path) {

			if ($('.sj-book').turn('is'))
				$('.sj-book').turn('page', 1);
		}
	});

	// Arrows

	$(document).keydown(function(e){

		var previous = 37, next = 39;

		switch (e.keyCode) {
			case previous:

				$('.sj-book').turn('previous');

			break;
			case next:
				
				$('.sj-book').turn('next');

			break;
		}

	});


	// Flipbook

	flipbook.bind(($.isTouch) ? 'touchend' : 'click', zoomHandle);

	flipbook.turn({
		elevation: 50,
		acceleration: !isChrome(),
		autoCenter: true,
		gradients: true,
		duration: 1000,
		pages: 112,
		when: {
			turning: function(e, page, view) {
				
				var book = $(this),
					currentPage = book.turn('page'),
					pages = book.turn('pages');

				if (currentPage>3 && currentPage<pages-3) {
				
					if (page==1) {
						book.turn('page', 2).turn('stop').turn('page', page);
						e.preventDefault();
						return;
					} else if (page==pages) {
						book.turn('page', pages-1).turn('stop').turn('page', page);
						e.preventDefault();
						return;
					}
				} else if (page>3 && page<pages-3) {
					if (currentPage==1) {
						book.turn('page', 2).turn('stop').turn('page', page);
						e.preventDefault();
						return;
					} else if (currentPage==pages) {
						book.turn('page', pages-1).turn('stop').turn('page', page);
						e.preventDefault();
						return;
					}
				}

				updateDepth(book, page);
				
				if (page>=2)
					$('.sj-book .p2').addClass('fixed');
				else
					$('.sj-book .p2').removeClass('fixed');

				if (page<book.turn('pages'))
					$('.sj-book .p111').addClass('fixed');
				else
					$('.sj-book .p111').removeClass('fixed');

				Hash.go('page/'+page).update();
					
			},

			turned: function(e, page, view) {

				var book = $(this);

				if (page==2 || page==3) {
					book.turn('peel', 'br');
				}

				updateDepth(book);
				
				$('#slider').slider('value', getViewNumber(book, page));

				book.turn('center');

			},

			start: function(e, pageObj) {
		
				moveBar(true);

			},

			end: function(e, pageObj) {
			
				var book = $(this);

				updateDepth(book);

				setTimeout(function() {
					
					$('#slider').slider('value', getViewNumber(book));

				}, 1);

				moveBar(false);

			},

			missing: function (e, pages) {

				for (var i = 0; i < pages.length; i++) {
					addPage(pages[i], $(this));
				}

			}
		}
	});


	$('#slider').slider('option', 'max', numberOfViews(flipbook));

	flipbook.addClass('animated');

	// Show canvas

	$('#canvas').css({visibility: ''});
}

// Hide canvas

$('#canvas').css({visibility: 'hidden'});

// Load turn.js

/* yepnope({
	test : Modernizr.csstransforms,
	yep: ['../../lib/turn.min.js'],
	nope: ['../../lib/turn.html4.min.js', 'css/jquery.ui.html4.css', 'css/steve-jobs-html4.css'],
	both: ['js/steve-jobs.js', 'css/jquery.ui.css', 'css/steve-jobs.css'],
	complete: loadApp
}); */

</script>
 
 
</body>
</html>
