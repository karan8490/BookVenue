<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>

<html>
<head>
<script type="text/javascript" src="resources/script/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="resources/script/turn.min.js"></script>
<link href="./resources/styles/home-page.css" rel="stylesheet">
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

<div class="splash preview show-samples sample-steve-jobs show-bar">

	<div class="center">
	<div class="details">
		<i class="turnjs"></i>
		<h1>Make a flip book with HTML5</h1>
		<ul>
			<li>Works on most browsers and devices</li>
			<li>Simple and clean API</li>
			<li title="Minimized and Gzipped">Lightweight, 10K</li>
		</ul>
		<p class="production">
			<a href="http://turnjs.com/confirm-download/5396f77366f55/turnjs4.zip" class="get-now">Download</a>
		</p>
		<div class="options">
			<p><i class="icon github"></i> <a href="http://www.github.com/blasten/turn.js">Fork on GitHub</a> </p>
		</div>
	</div>

	<div class="bookshelf">
		<div class="shelf">
			<div class="row-1">
				<div class="loc">
					<div> <div class="sample thumb1" sample="steve-jobs" style="visibility: hidden;"></div> </div>
					<div> <div class="sample thumb2" sample="html5"></div> </div>
					<div> <div class="sample thumb3" sample="docs"></div> </div>
				</div>
			</div>
			<div class="row-2">
				<div class="loc">
					<div> <div class="sample thumb4" sample="magazine1"></div> </div>
					<div> <div class="sample thumb5" sample="magazine2"></div> </div>
					<div> <div class="sample thumb6" sample="magazine3"></div> </div>
				</div>
			</div>
		</div>
		<div class="suggestion">↑ Click a book or magazine to see turn.js in action</div>
	</div>

<!-- Samples-->
	<div class="samples">
		<div class="bar">
			<div class="share">
				<i class="icon table-contents" title="Table of contents"></i>
				<i class="icon zoom-in" title="Zoom in"></i>
				<i class="icon share-facebook" title="Share on facebook"></i>
				<i class="icon share-twitter" title="Share on Twitter"></i>
				<i class="icon share-plus" title="Share on G+"></i>
				<i class="icon share-pinterest" title="Share on Pinterest"></i>
			</div>
			<a class="icon quit"></a>
		</div>
		<div id="book-wrapper">
			<div id="book-zoom" style="visibility: visible;" class="animate"><div class="sj-book-transform sj-book animated" style="position: relative; width: 960px; height: 600px; transform: translate3d(0px, 0px, 0px); margin-left: 0px; background-position: 479px 0px;"><div class="page-wrapper" page="2" style="position: absolute; overflow: visible; width: 480px; height: 600px; top: 0px; left: 0px; right: auto; z-index: 0; perspective-origin: 100% 50%;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 225; transform-style: preserve-3d; backface-visibility: hidden; width: 480px; height: 600px; transform-origin: 100% 50% 0px;"><div depth="5" class="hard front-side page p2 even fixed" style="float: left; width: 480px; height: 600px;"> <div class="depth" style="width: 2.85714px; left: 17.1429px;"></div> </div></div><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 224; transform-style: preserve-3d; backface-visibility: hidden; width: 480px; height: 600px; transform-origin: 0% 50% 0px; transform: translateX(480px) rotateY(180deg); display: none;"></div><div style="position: absolute; top: 0px; left: 100%; overflow: hidden; z-index: auto; width: 480px; height: 600px; background-color: rgba(0, 0, 0, 0.5); transform: rotateY(0deg); display: none;"></div></div><div style="pointer-events: none; display: block; position: absolute; top: -100px; left: -168px; overflow: visible; z-index: auto;"><div style="position: absolute; top: 109px; left: 188px; overflow: hidden; z-index: 111; display: none; width: 742px; height: 742px; transform-origin: 100% 100% 0px; transform: translate3d(-742px, -160px, 0px) rotate(90deg);"><div style="position: absolute; top: auto; left: auto; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px; right: 0px; bottom: 0px; transform-origin: 100% 100% 0px; transform: rotate(-90deg) translate3d(0px, 0px, 0px) rotate(360deg);"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px; background-image: -moz-linear-gradient(2.35619rad, transparent 0%, rgba(0, 0, 0, 0.2) 0.0767754%, rgba(255, 255, 255, 0.2) 0.0959693%);"></div></div></div><div style="position: absolute; top: 109px; left: 648px; overflow: hidden; z-index: 0; display: none; width: 742px; height: 742px; transform-origin: 0% 0% 0px; transform: translate3d(0px, 0px, 0px) rotate(90deg);"><div style="position: absolute; top: 0px; left: 0px; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px; right: 0px; bottom: auto; transform-origin: 0% 0% 0px; transform: rotate(-90deg) translate3d(-460px, 0px, 0px) rotate(360deg);"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px; background-image: -moz-linear-gradient(-6.12323e-17rad, transparent 78.2609%, transparent 95.6522%, rgba(255, 255, 255, 0) 100%);"></div></div></div><div style="position: absolute; top: 109px; left: 188px; overflow: hidden; z-index: 112; display: none; width: 742px; height: 742px;"><div style="position: absolute; top: 0px; left: 0px; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div></div><div style="position: absolute; top: 109px; left: 648px; overflow: hidden; z-index: 112; display: none; width: 742px; height: 742px;"><div style="position: absolute; top: 0px; left: 0px; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div></div><div style="position: absolute; top: 109px; left: 188px; overflow: hidden; z-index: 0; display: none; width: 742px; height: 742px;"><div style="position: absolute; top: 0px; left: 0px; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div></div><div style="position: absolute; top: 109px; left: 648px; overflow: hidden; z-index: 111; display: none; width: 742px; height: 742px;"><div style="position: absolute; top: 0px; left: 0px; overflow: visible; z-index: auto; cursor: default; width: 460px; height: 582px;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div></div></div><div class="page-wrapper" page="111" style="position: absolute; overflow: hidden; width: 480px; height: 600px; top: 0px; right: 0px; left: auto; z-index: 0;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 2; transform-style: preserve-3d; backface-visibility: hidden; width: 480px; height: 600px;"><div class="hard fixed back-side p111 page odd" style="float: left; width: 480px; height: 600px;"> <div class="depth" style="width: 16px; right: 4px;"></div> </div></div><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: 1; transform-style: preserve-3d; backface-visibility: hidden; width: 480px; height: 600px;"></div><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; display: none; width: 480px; height: 600px;"></div></div><div class="shadow" style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 960px; height: 600px;"></div><div class="page-wrapper" page="8" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; left: 20px; right: auto; z-index: 111;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px; transform-origin: 100% 100% 0px;"><div class="own-size page p8 even" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto; box-shadow: 0px 0px 20px transparent; transform-origin: 100% 100% 0px;"><div class="book-content">


<p>
The book is described as "[chronicling] the roller-coaster life and searingly intense personality of a creative entrepreneur whose passion for perfection and ferocious drive revolutionized six industries: personal computers, animated movies, music, phones, tablet computing, and digital publishing."
</p>

<p>
In just over 600 pages, the book covers Jobs' entire life, from his childhood in his adoptive parents' home in California to his three bouts with pancreatic cancer. Early chapters include one on his relationship with Steve Wozniak and Jobs' brief stint at Hewlett-Packard, Reed College, Atari, and a formative trip to India to find himself. A chapter each is devoted to the development of the Apple I, Apple II, Lisa, and the classic Macintosh during his early years, the founding of NeXT and funding of Pixar when he was ousted from Apple, and Jobs' triumphant and incredibly productive return to Apple starting in 1997. Following the latter "second coming" of Jobs, Isaacson chronicles the development
</p>

</div>
<span class="page-number">8</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px; background-image: -moz-linear-gradient(0.785398rad, transparent 0.0690979%, rgba(0, 0, 0, 0.3) 0.0921305%, transparent 0.115163%); display: none;"></div></div><div class="page-wrapper" page="9" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; right: 20px; left: auto; z-index: 0; display: none;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px; transform-origin: 0% 0% 0px;"><div class="own-size page p9 odd" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto; transform-origin: 0% 0% 0px;"><div class="book-content">

<p class="center-pic">
	<img src="./resources/pics/books.jpg?p" style="width:350px; height:230px;">
</p>

<p class="no-indent">
of the iMac, iPod, iTunes, Apple Stores, and iPad.
</p>


<p>
Jobs' abrasive personality, which simultaneously inspired and intimidated those around him, is a recurrent theme throughout. Details of his personal life are also included, including early relationships, his marriage of twenty years, and his four children and his early life. 

</p></div>
<span class="page-number">9</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px; background-image: -moz-linear-gradient(-3.14159rad, transparent 72%, transparent 96%, transparent 120%); display: none;"></div></div><div class="page-wrapper" page="10" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; left: 20px; right: auto; z-index: 112;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px;"><div class="own-size page p10 even" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto; box-shadow: 0px 0px 20px transparent;"><div class="book-content">

<h1>Youth</h1>

<h2>The jobs family</h2>

<p class="capital">
Steve Jobs was born on February 24, 1955, in the city of San Francisco. His biological mother was an unwed graduate student named Joanne Simpson,
and his biological father was either a political science or mathematics professor, a native Syrian named Abdulfattah John Jandali.
</p>


<p>
Being born out of wedlock in the puritan America of the 1950s, the baby
was put up for adoption. Joanne had a college education, and she insisted that the future parents of her boy be just as well educated. Unfortunately,
the candidates, Paul and Clara Jobs, did not meet her expectations: they were a lower-middle class couple that had settled in the Bay Area after the
war. Paul was a machinist from the Midwest who had
</p>


</div>
<span class="page-number">10</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div><div class="page-wrapper" page="11" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; right: 20px; left: auto; z-index: 112;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px;"><div class="own-size page p11 odd" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto;"><div class="book-content">

<p class="no-indent">
not even graduated from high school. In the end, Joanne agreed to have her baby adopted by
them, under the firm condition that they later send him to college.
</p>

<p>
Paul and Clara called their new son Steven Paul. While Steve was still a toddler, the couple moved to the Santa Clara county, later to be known as
Silicon Valley. They adopted another baby, a girl called Patti, three years later in 1958.
</p>

<h2>Childhood</h2>

<p> 
<img class="left-pic zoom-this" src="./resources/pics/young.jpg?" width="100" height="113">Steve was quite a turbulent child. He really didn’t care about school for
some time — until he reached the 4th grade, and had Imogene “Teddy” Hill as a teacher.</p>

<p>She did bribe him, with candy and $5 bills from her own money. He quickly became hooked — so</p>

</div>
<span class="page-number">11</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div><div class="page-wrapper" page="12" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; left: 20px; right: auto; z-index: 0; display: none;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px;"><div class="own-size page p12 even" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto;"><div class="book-content">

<p class="no-indent">
much so that he skipped the 5th grade and went straight to middle school, namely Crittenden Middle School. It was in a poor area. Most kids did not work much there, they were rather fond of bullying other kids, such as the young Steve. One day he came home and declared that if he wasn’t transferred to another school, he would stop going to school altogether. He was 11. Paul and Clara complied, and the Jobses moved to the cozier city of Los Altos, so that Steve could go to Cupertino Junior High. This proved to be decisive for Steve’s future.
</p>

<p>
As Steve was growing up in Los Altos, he became increasingly curious about the world of electronics that filled his neighbors’ garages. His own
father introduced him to Heathkits, which fascinated him.
</p>

<h2>Homestead High</h2>

<p>
When Steve arrived in Homestead High School, he enrolled in a popular electronics class. His teacher was
</p>

</div>
<span class="page-number">12</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div><div class="page-wrapper" page="13" style="position: absolute; overflow: hidden; width: 460px; height: 582px; top: 9px; right: 20px; left: auto; z-index: 111;"><div style="position: absolute; top: 0px; left: 0px; overflow: hidden; z-index: auto; width: 742px; height: 742px;"><div class="own-size page p13 odd" style="width: 460px; height: 582px; float: left; position: absolute; top: 0px; left: 0px; bottom: auto; right: auto;"><div class="book-content">

<p class="no-indent">
Mr. McCollum. McCollum later recalled of one time when his pupil Steve called up David Hewlett himself, co-founder of HP, to get spare parts for his homework, and even a summer job at HP’s factory. Steve’s entrepreneurial skills showed up early in his life indeed.
</p>

<p>

<img class="left-pic zoom-this" src="./resources/pics/highschool.jpg" width="172" height="159">
At Homestead, Steve befriended Bill Fernandez, a neighbor who shared his interests in electronics. It was Bill who first introduced him to another computer whiz kid, an older guy named Stephen Wozniak, or — as everybody used to call him — Woz. Steve and Woz met in 1969, when they were respectively 14 and 19. At the time, Woz was building a little computer board with Bill Fernandez that they called “the Cream Soda Computer”.</p>

</div>
<span class="page-number">13</span></div></div><div style="top: 0px; left: 0px; overflow: hidden; z-index: 1; width: 460px; height: 582px;"></div></div></div></div>
		</div>
		<div id="slider-bar" class="turnjs-slider">
			<div id="slider" class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"><a class="ui-slider-handle ui-state-default ui-corner-all" style="left: 8.92857%; z-index: 0;"></a></div>
		</div>

	</div>

<!-- End samples -->

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


<script type="text/javascript">
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

</body>
</html>
