<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="keywords" content="грузоперевозки по России">
    <title><g:layoutTitle default="Грузоперевозки по всей России"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <!-- restart theme css links -->
    <link href="${request.contextPath}/restart_v3/animate.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/js/woothemes-FlexSlider-06b12f8/flexslider.css" type="text/css" media="screen">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/js/prettyPhoto_3.1.5/prettyPhoto.css" type="text/css" media="screen">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/style.css"  type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/fonts/font-awesome/css/font-awesome.min.css" media="screen">
    <script type="text/javascript" src="${request.contextPath}/restart_v3/js/modernizr.custom.48287.js"></script>

    <script>
        $( document ).ready(initHandlers);
    </script>
    <g:layoutHead/>
</head>

<body>
<div class="container-fluid">
<header>
    <div class="container">
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header"><a class="navbar-brand" href="index.html"> <img src="images/restart_logo.png" alt="optional logo" height="90" width="90"> <span class="logo_title">{re}<strong>start</strong></span> <span class="logo_subtitle">a multipurpose template</span> </a><a class="btn btn-navbar btn-default navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="nb_left pull-left"> <span class="fa fa-reorder"></span></span> <span class="nb_right pull-right">menu</span> </a></div>
            <div class="collapse navbar-collapse">
                <ul class="nav pull-right navbar-nav">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a href="about_us.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="portfolio.html">Portfolio</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#">Pages<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="home_alternative.html">Home Alternative</a></li>
                            <li><a href="page_alternative.html">Page Alternative</a></li>
                            <li><a href="gallery.html">Portfolio Masonry</a></li>
                            <li><a href="portfolio_item.html">Portfolio Item</a></li>
                            <li><a href="portfolio_item_2.html">Portfolio Item II</a></li>
                            <li><a href="single_post.html">Single Post</a></li>
                            <li><a href="404.html">ERROR 404</a></li>
                            <li><a href="register.html">Register or Sign in</a></li>
                            <li><a href="elements.html">Design Elements</a></li>
                            <li><a href="documentation/index.html">Documentation <span class="label label-danger">new</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <div id="social_media_wrapper"> <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/leonartgr"><i class="fa fa-twitter"></i></a> <a href="#googleplus"><i class="fa fa-google-plus"></i></a> </div>
        <div id="sign"><a href="register.html"><i class="fa fa-user"></i><span>Register/Sign in</span></a></div>
    </div>
</header>
<section id="slider_wrapper" class="slider_wrapper full_page_photo">
    <div id="main_flexslider" class="flexslider">
        <ul class="slides">
            <li class="item" style="background-image: url(images/1.jpg)">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>a <strong>flexible</strong> theme<br>
                            you can <strong>trust</strong> &amp; <strong>build upon</strong>!</h1>
                        <p class="lead skincolored">Re<strong>start</strong> is based on <strong>good typography</strong> and <strong>large photography</strong>, serving as a foundation for your creative projects. Feel free to browse its templates and discover its features.</p>
                        <span class="round_badge"><strong><i class="fa fa-twitter"></i></strong><strong>V3</strong></span> </div>
                </div>
            </li>
            <li class="item" style="background-image: url(images/2.jpg)">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>makes <strong>real use</strong><br>
                            of the power of <strong>{LESS}</strong> syntax!</h1>
                        <p class="lead skincolored">Restart was built with heavy use of {less} technology, making the life of the web developer easier!</p>
                    </div>
                </div>
            </li>
            <li class="item" style="background-image: url(images/3.jpg)">
                <div class="container">
                    <div class="carousel-caption">
                        <h1 class="skincolored"><strong>subtle</strong> animations<br>
                            &amp; a <strong>fresh</strong> collapsing <strong>header effect</strong></h1>
                        <p class="lead">if you are looking for <a href="services.html"><strong>a bold approach</strong></a> you will love the header effect,<br>
                            but even if you like <a href="page_alternative.html"><strong>a more conservative feel</strong></a>, you can always try the boxed alternative!</p>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</section>

    <div id="body-content">
        <g:layoutBody/>
    </div>


    <footer>
        <section id="footer_teasers_wrapper">
            <div class="container">
                <div class="row">
                    <div class="footer_teaser col-sm-4 col-md-4">
                        <h3>About us</h3>
                        <p>Fugiat dapibus, tellus ac cursus commodo, mauesris condime ntum nibh, ut fermentum mas justo sitters.</p>
                        <p><i class="fa fa-map-marker"></i> 3 Athens street</p>
                        <p><i class="fa fa-phone"></i> (+30) 265-9987</p>
                        <p><i class="fa fa-print"></i> (+30) 9854-7855</p>
                        <p><i class="fa fa-envelope"></i> hello@restarttheme.com</p>
                    </div>
                    <div class="footer_teaser col-sm-4 col-md-4">
                        <h3>Latest News</h3>
                        <ul class="media-list">
                            <li class="media"> <a href="#" class="media-photo" style="background-image:url(images/portfolio/t5.jpg)"></a> <a href="#" class="media-date">19<span>FEB</span></a>
                                <h5 class="media-heading"><a href="#">Media heading, this is a title of a news...</a></h5>
                                <p>Fugiat dapibus, tellus ac cursus commodo, ut fermentum...</p>
                            </li>
                            <li class="media"> <a href="#" class="media-photo" style="background-image:url(images/portfolio/t4.jpg)"></a> <a href="#" class="media-date">18<span>FEB</span></a>
                                <h5 class="media-heading"><a href="#">Media heading, of a news item.</a></h5>
                                <p>Fugiat dapibus, tellus ac cursus commodo, condime ntum nibh, ut fermentum...</p>
                            </li>
                        </ul>
                    </div>
                    <div class="footer_teaser col-sm-4 col-md-4" id="latest-flickr-images">
                        <h3>FlickrFeed</h3>
                        <ul></ul> <p>All photos © by <a href="http://www.dimitragiannouka.com" target="_blank">Dimitra Giannouka</a>.</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-6"> Copyright ©2014 all rights reserved </div>
                    <div class="text-right col-sm-6 col-md-6"> Designed by <a href="http://vk.com/ajrat">Ayrat Valiev</a> </div>
                </div>
            </div>
        </section>
    </footer>
</div>

%{--<script src="http://code.jquery.com/jquery-latest.min.js"></script>--}%
%{--<script>window.jQuery || document.write('<script src="${request.contextPath}/restart_v3/js/jquery-1.9.0.min.js"><\/script>')</script>--}%
%{--<script src="${request.contextPath}/restart_v3/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--}%

<script src="${request.contextPath}/restart_v3/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
<script src="${request.contextPath}/restart_v3/js/prettyPhoto_3.1.5/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
<script src="${request.contextPath}/restart_v3/js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/easing.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/wow.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/snap.svg-min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/restart_theme.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/collapser.js"></script>
</body>
</html>