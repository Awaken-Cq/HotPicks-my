<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Delphic | Creative Portfolio Template</title>
<link rel="stylesheet" type="text/css" href="resources/style.css" media="all" />
<link rel="stylesheet" media="all" href="resources/style/type/folks.css" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="resources/style/css/ie7.css" media="all" />
<![endif]-->
<script type="text/javascript" src="resources/style/js/jquery-1.5.min.js"></script>
<script type="text/javascript" src="resources/style/js/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="resources/style/js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="resources/style/js/scripts.js"></script>
<script type="text/javascript">
$(function() {
			if ($('#sliderholder-cycle').length) {
			// timeouts per slide (in seconds) 
			var timeouts = [150,390,25]; 
			function calculateTimeout(currElement, nextElement, opts, isForward) { 
			    var index = opts.currSlide; 
			    return timeouts[index] * 1000;
			}
			jQuery('#sliderholder-cycle').cycle({
				fx: 'fade',
				pager: '.slidernav',
				prev:    '.sliderprev',
        		next:    '.slidernext',
				speed: 1000,
				timeoutFn: calculateTimeout,
				pagerEvent: 'click',
    			pauseOnPagerHover: true,
    			cleartype: 1
});
			jQuery('#sliderholder-cycle').css("display", "block");
			jQuery('.slidernav').css("display", "block");
			
			}
}); 
</script>
</head>
<body>
<div id="container"> 
  <!-- Begin Header Wrapper -->
  <div id="page-top">
    <div id="header-wrapper"> 
      <!-- Begin Header -->
      <div id="header">
        <div id="logo"><a href="index.jsp"><img src="resources/style/images/logo.png" alt="Delphic" /></a></div>
        <!-- Logo --> 
        <!-- Begin Menu -->
        <div id="menu-wrapper">
          <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp" class="selected">Home</a>
                <ul>
                  <li><a href="index.jsp">Home with Cycle</a></li>
                  <li><a href="index-2.jsp">Home with Columns</a></li>
                  <li><a href="index-3.jsp">Home with Services</a></li>
                  <li><a href="index-4.jsp">Home with Piecemaker</a></li>
                </ul>
              </li>
              <li><a href="blog-1.jsp">Blog</a>
                <ul>
                  <li><a href="blog-1.jsp">Blog</a></li>
                  <li><a href="blog-2.jsp">News</a></li>
                  <li><a href="blog-single.jsp">Single Blog Post</a></li>
                </ul>
              </li>
              <li><a href="portfolio-1.jsp">Portfolio</a>
                <ul>
                  <li><a href="portfolio-1.jsp">Portfolio with Lightbox</a></li>
                  <li><a href="portfolio-2.jsp">Portfolio with Details</a></li>
                  <li><a href="portfolio-single.jsp">Single Portfolio Post</a></li>
                </ul>
              </li>
              <li><a href="services.jsp">Services</a></li>
              <li><a href="page-tabs-toggle.jsp">Features</a>
                <ul>
                  <li><a href="page-tabs-toggle.jsp">Tabs &amp; Toggle</a></li>
                  <li><a href="page-carousel.jsp">Carousel</a></li>
                  <li><a href="blog-2.jsp">News</a></li>
                  <li><a href="services.jsp">Services</a></li>
                  <li><a href="page-custom.jsp">Custom Page</a></li>
                  <li><a href="page-buttons.jsp">Buttons</a></li>
                  <li><a href="styles.jsp">Columns &amp; Tables</a></li>
                </ul>
              </li>
              <li><a href="contact.jsp">Contact</a></li>
            </ul>
          </div>
        </div>
        <!-- End Menu -->
      </div>
      <!-- End Header --> 
    </div>
  </div>
  <!-- End Header Wrapper --> 
  
  <!-- Begin Slider -->
  <div id="cycle-wrapper">
    <div id="sliderholder-cycle"> <img src="resources/style/images/art/slider-1.jpg" width="960" height="380" />
      <div>
        <iframe src="http://player.vimeo.com/video/4890208?title=0&amp;byline=0&amp;portrait=0" width="960" height="380" frameborder="0"></iframe>
      </div>
      <img src="resources/style/images/art/slider-2.jpg" width="960" height="380" /> </div>
    <ul class="slidernav">
    </ul>
    <div class="sliderdir"> <a href="#"><span class="sliderprev">Prev</span></a> <a href="#"><span class="slidernext">Next</span></a> </div>
  </div>
  <!-- End Slider -->
  
  <!-- Begin Wrapper -->
  <div id="wrapper"> 
    
    <!-- Begin Intro -->
    <div class="intro">
      <h1>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium. Praesent urna urna, venenatis at ultrices ac, viverra in turpis. Duis sceler isque mauri sut metus feugiat laoreet. </h1>
    </div>
    <!-- End Intro --> 
    
    <!-- Begin About -->
    <div class="tab-wrapper">
      <ul id="tab-menu">
        <li class="selected"><img src="resources/style/images/icon-palette.png" alt="" /> Graphic Design</li>
        <li><img src="resources/style/images/icon-art.png" alt="" /> Illustration</li>
        <li><img src="resources/style/images/icon-laptop.png" alt="" /> Web Design</li>
        <li><img src="resources/style/images/icon-camera.png" alt="" /> Photography</li>
      </ul>
      <div class="tab-content">
        <div class="tab show">
          <h3>Graphic Design</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam elementum consequat sem, nec tincidunt enim feugiat sed. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed egestas mattis tortor, quis auctor orci commodo id. In hac habitasse platea dictumst. Integer sed nisi nibh. Integer neque mi, pellentesque ut adipiscing ultrices, egestas vel ligula. Integer interdum ultrices turpis. Ut non est sed odio malesuada congue ac id ipsum. Duis mi tellus, porttitor a tristique eu, porttitor a odio. Curabitur accumsan cursus sollicitudin. Nullam quis ante ante, sed molestie elit. Morbi egestas est quis metus luctus accumsan. Duis interdum lectus eget est hendrerit mollis. Mauris vestibulum dictum porta. Praesent vel odio quis augue ultricies aliquam eget ut magna.</p>
          <p> <img src="resources/style/images/art/portfolio12-th.jpg" alt="" class="right"/> Aliquam porttitor faucibus rhoncus. Aliquam erat volutpat. Vestibulum molestie fringilla mollis. Fusce eu neque arcu. Donec blandit imperdiet mollis. Etiam suscipit nisl eget libero aliquet tincidunt. Mauris euismod, tellus ac pellentesque malesuada, ligula tortor venenatis velit, at vehicula ligula lorem ac nisi. Maecenas et ligula arcu. Nullam vel accumsan felis. Vivamus venenatis diam vel magna ornare pellentesque. Pellentesque pharetra facilisis consectetur euismod mauris felis.</p>
        </div>
        <div class="tab">
          <h3>Illustration</h3>
          <p><img src="resources/style/images/art/portfolio11-th.jpg" alt="" class="right"/> Vivamus mauris felis, egestas iaculis blandit vulputate, convallis sit amet justo.  Cras id orci felis. Duis lobortis blandit mollis. Donec in dignissim dui. Praesent vitae leo tempus turpis luctus convallis. Cras consectetur commodo ornare. Aliquam semper dignissim massa nec condimentum. Nunc tincidunt gravida velit, nec elementum erat aliquam aliquam. Fusce et risus orci. Aliquam at sapien in lacus interdum mattis nec at sem. Sed elit elit, vehicula a adipiscing vitae, dignissim in quam. Aliquam erat volutpat. Proin non massa nibh, sit amet placerat nibh. Aliquam posuere aliquam enim vitae euis. Morbi vestibulum porttitor pellentesque. Vestibulum ac pellentesque dolor. </p>
        </div>
        <div class="tab">
          <h3>Web Design</h3>
          <p><img src="resources/style/images/art/portfolio10-th.jpg" alt="" class="left"/> Nullam pellentesque placerataliquet. Donec vulputate magna in elit blandit vitae congue lectus venenatis. Pellentesque leo augue, mattis iaculis luctus eget, ultricies ac tortor. Duis nec blandit arcu. Etiam est felis, iaculis non lobortis id, sodales eu dolor. Vivamus placerat adipiscing tincidunt. Fusce ultrices porta tortor. Maecenas id purus magna, id congue turpis. Aenean hendrerit tincidunt eleifend. Etiam eu erat vitae diam consectetur ornare. Nam sed facilisis nibh. Ut varius leo.</p>
          <p> Vestibulum at hendrerit ipsum. Fusce sit amet nibh velit, vel accumsan justo. Sed mi ligula, pellentesque varius pretium et, bibendum non metus. Vestibulum vitae libero tortor, eu ullamcorper urna. Duis aliquam risus eu orci tristique non dictum sem feugiat. Nullam leo nibh, iaculis ac commodo ut, elementum vel tellus. Nunc vehicula, mi non pharetra condimentum, magna tellus rutrum quam, sit amet ultricies enim ipsum vitae urna.</p>
        </div>
        <div class="tab">
          <h3>Photography</h3>
          <p><img src="resources/style/images/art/portfolio9-th.jpg" alt="" class="right"/>Vestibulum at hendrerit ipsum. Fusce sit amet nibh velit, vel accumsan justo. Sed mi ligula, pellentesque varius pretium et, bibendum non metus. Vestibulum vitae libero tortor, eu ullamcorper urna. Duis aliquam risus eu orci tristique non dictum sem feugiat. Nullam leo nibh, iaculis ac commodo ut, elementum vel tellus. Nunc vehicula, mi non pharetra condimentum, magna tellus rutrum quam, sit amet ultricies enim ipsum vitae urna. Etiam ac arcu velit, in sagittis tortor. </p>
          <p> Aliquam augue tellus, accumsan ut eleifend vitae, vehicula sed nulla. Nam vel orci risus, in imperdiet turpis. Ut aliquam tortor vitae augue ultricies hendrerit. Vivamus vel gravida lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque elit tellus, eleifend ut fringilla quis, venenatis vel velit. Suspendisse quis interdum lorem.</p>
        </div>
      </div>
    </div>
    <div class="clear"></div>
    <!-- End About --> 
    
  </div>
  
  <!-- End Wrapper -->
  <div class="clearfix"></div>
  <div class="push"></div>
</div>

<!-- Begin Footer -->
<div id="footer-wrapper">
  <div id="footer">
    <div id="footer-content"> 
      
      <!-- Begin Copyright -->
      <div id="copyright">
        <p>© Copyright 2011 Delphic | Creative Portfolio Template</p>
      </div>
      <!-- End Copyright --> 
      
      <!-- Begin Social Icons -->
      <div id="socials">
        <ul>
          <li><a href="#"><img src="resources/style/images/icon-rss.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-twitter.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-dribble.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-tumblr.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-flickr.png" alt="" /></a></li>
          <li><a href="#"><img src="resources/style/images/icon-facebook.png" alt="" /></a></li>
        </ul>
      </div>
      <!-- End Social Icons --> 
      
    </div>
  </div>
</div>
<!-- End Footer --> 

<script type="text/javascript">

$(document).ready(function() {	
  //Get all the LI from the #tabMenu UL
  $('#tab-menu > li').click(function(){
    //remove the selected class from all LI    
    $('#tab-menu > li').removeClass('selected');
    //Reassign the LI
    $(this).addClass('selected');
    //Hide all the DIV in .tab-content
    $('.tab-content div.tab').slideUp('slow');
    //Look for the right DIV in boxBody according to the Navigation UL index, therefore, the arrangement is very important.
    $('.tab-content div.tab:eq(' + $('#tab-menu > li').index(this) + ')').slideDown('slow');
  }).mouseover(function() {
    //Add and remove class, Personally I dont think this is the right way to do it, anyone please suggest    
    $(this).addClass('mouseover');
    $(this).removeClass('mouseout');   
  }).mouseout(function() {
    //Add and remove class
    $(this).addClass('mouseout');
    $(this).removeClass('mouseover');    
  });
});


$(function() {
            var offset = $("#tab-menu").offset();
            var topPadding = 15;
            $(window).scroll(function() {
                if ($(window).scrollTop() > offset.top) {
                    $("#tab-menu").stop().animate({
                        marginTop: $(window).scrollTop() - offset.top + topPadding
                    });
                } else {
                    $("#tab-menu").stop().animate({
                        marginTop: 0
                    });
                };
            });
        });
  

</script>
</body>
</html>