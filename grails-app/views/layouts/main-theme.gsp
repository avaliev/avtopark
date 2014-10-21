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
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.jpg')}" type="image/x-icon">
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
    <section class="top_bar animated slideInDown">
    <div class="container">
        <div class="row">
            <div class="tob_bar_left_col col-xs-12 col-sm-6 col-md-6">
                <ul class="top_menu">

                    <li><a href="${request.contextPath}">Главная</a></li>
                    <li><a href="about_us.html">О нас</a></li>
                    <li><a href="services.html">Услуги</a></li>
                    <li><a href="portfolio.html">Связаться с нами</a></li>
                </ul>
            </div>
            <div class="tob_bar_right_col col-xs-6 col-sm-6 col-md-6">
                <p>Звонок бесплатный! ${contacts.phone}</p>
            </div>
        </div>
    </div>
    </section>
    <div class="container">
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="${request.contextPath}"><asset:image src="logo.gif" width="300" height="200"/></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav pull-right navbar-nav">
                    <li class="active"><a href="/avto-park">Главная</a></li>
                    <li><a href="#">Оставить заявку</a></li>
                    <li><a href="#">Услуги</a></li>
                    <li><a href="#">О нас</a></li>
                    <li><a href="#">Контакты</a></li>
                    <li hidden="true" class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#">Документы<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="home_alternative.html">Home Alternative</a></li>
                            <li><a href="page_alternative.html">Page Alternative</a></li>
                            <li><a href="gallery.html">Portfolio Masonry</a></li>
                            <li><a href="portfolio_item.html">Portfolio Item</a></li>
                            <li><a href="portfolio_item_2.html">Portfolio Item II</a></li>
                            <li><a href="documentation/index.html">Documentation <span class="label label-danger">new</span></a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        %{--<div id="social_media_wrapper"> <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/leonartgr"><i class="fa fa-twitter"></i></a> <a href="#googleplus"><i class="fa fa-google-plus"></i></a> </div>--}%
        %{--<div id="sign"><a href="register.html"><i class="fa fa-user"></i><span>Register/Sign in</span></a></div>--}%
    </div>
</header>
<section id="slider_wrapper" class="slider_wrapper full_page_photo">
    <div id="main_flexslider" class="flexslider">
        <ul class="slides">
            <li class="item" style="background-image: url(${assetPath(src: 'fura.jpg')})">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Есть догруз в <strong>фуры</strong> <br>
                            для разных видов <strong>грузоперевозок по России</strong>!</h1>
                        %{--<p class="lead skincolored"><strong>start</strong> is based on <strong>good typography</strong> and <strong>large photography</strong>, serving as a foundation for your creative projects. Feel free to browse its templates and discover its features.</p>--}%
                </div> </div>
            </li>
            %{--<li class="item" style="background-image: url(images/2.jpg)">--}%
                %{--<div class="container">--}%
                    %{--<div class="carousel-caption">--}%
                        %{--<h1>makes <strong>real use</strong><br>--}%
                            %{--of the power of <strong>{LESS}</strong> syntax!</h1>--}%
                        %{--<p class="lead skincolored">Restart was built with heavy use of {less} technology, making the life of the web developer easier!</p>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</li>--}%
            <li class="item" style="background-image: url(${assetPath(src: 'gazelki.jpg')})">
                <div class="container">
                    <div class="carousel-caption">
                        <h1><strong>Газели</strong> для<br>
                             небольших <strong>грузов</strong></h1>
                        %{--<p class="lead">if you are looking for <a href="services.html"><strong>a bold approach</strong></a> you will love the header effect,<br>--}%
                            %{--but even if you like <a href="page_alternative.html"><strong>a more conservative feel</strong></a>, you can always try the boxed alternative!</p>--}%
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
                        <h3>О нас</h3>
                        <p>${contacts.about}</p>
                        <p><i class="fa fa-map-marker"></i> ${contacts.address}</p>
                        <p><i class="fa fa-phone"></i> ${contacts.phone}</p>
                        <p><i class="fa fa-print"></i> ${contacts.fax}</p>
                        <p><i class="fa fa-envelope"></i> ${contacts.email} </p>
                    </div>
                    %{--<div class="footer_teaser col-sm-4 col-md-4">--}%
                        %{--<h3>Latest News</h3>--}%
                        %{--<ul class="media-list">--}%
                            %{--<li class="media"> <a href="#" class="media-photo" style="background-image:url(images/portfolio/t5.jpg)"></a> <a href="#" class="media-date">19<span>FEB</span></a>--}%
                                %{--<h5 class="media-heading"><a href="#">Media heading, this is a title of a news...</a></h5>--}%
                                %{--<p>Fugiat dapibus, tellus ac cursus commodo, ut fermentum...</p>--}%
                            %{--</li>--}%
                            %{--<li class="media"> <a href="#" class="media-photo" style="background-image:url(images/portfolio/t4.jpg)"></a> <a href="#" class="media-date">18<span>FEB</span></a>--}%
                                %{--<h5 class="media-heading"><a href="#">Media heading, of a news item.</a></h5>--}%
                                %{--<p>Fugiat dapibus, tellus ac cursus commodo, condime ntum nibh, ut fermentum...</p>--}%
                            %{--</li>--}%
                        %{--</ul>--}%
                    %{--</div>--}%
                    %{--<div class="footer_teaser col-sm-4 col-md-4" id="latest-flickr-images">--}%
                        %{--<h3>FlickrFeed</h3>--}%
                        %{--<ul></ul> <p>All photos © by <a href="http://www.dimitragiannouka.com" target="_blank">Dimitra Giannouka</a>.</p>--}%
                    %{--</div>--}%
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