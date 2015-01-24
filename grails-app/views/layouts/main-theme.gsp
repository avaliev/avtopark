<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title><g:layoutTitle default="Грузоперевозки по всей России"/></title>
    <g:layoutHead/>
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.jpg')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <!-- restart theme css links -->
    <link href="${request.contextPath}/restart_v3/animate.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/js/woothemes-FlexSlider-06b12f8/flexslider.css"
          type="text/css" media="screen">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/js/prettyPhoto_3.1.5/prettyPhoto.css" type="text/css"
          media="screen">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/style.css" type="text/css">
    <link rel="stylesheet" href="${request.contextPath}/restart_v3/fonts/font-awesome/css/font-awesome.min.css"
          media="screen">
    <script type="text/javascript" src="${request.contextPath}/restart_v3/js/modernizr.custom.48287.js"></script>

    <script>
        $(document).ready(initHandlers);
    </script>

</head>

<body>
<div class="container-fluid">
    <header>
        %{--<section class="top_bar">--}%
        %{--<div class="container">--}%
        %{--<div class="row">--}%
        %{--<div class="tob_bar_right_col col-xs-12 col-sm-12 col-md-12" >--}%
        %{--<g:if test="${contacts != null}">--}%
        %{--<p style="font-size: 15px"><span class="glyphicon glyphicon-phone-alt"></span> ${contacts.phone} - Горячая линия!</p>--}%
        %{--</g:if>--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</section>--}%
        <section class="header">
            <div class="container header" style="height: 100px">
                <div class="row">
                    <div class="col-sm-2 logotip" >
                        <a class="" href="/">
                            <asset:image src="logo.gif"/></a>
                    </div>

                    <div class="col-sm-3 header-text" >
                        Грузоперевозки по России </br>
                        автомобильным транспортом
                    </div>

                    <div class="col-sm-3 russia-label">
                            <asset:image src="russia-label.png"/>
                    </div>


                    <div class="col-sm-4">
                        <div style="float: left">
                            <asset:image src="phone-icon.png"/>
                        </div>
                        <p></p>
                        <p class="phone-info">Горячая линия: 8-800-700-6798 <br>
                            <small style="color: #000000; font-size: 12px">Звонок по России бесплатный!</small>
                        </p>
                        %{--<p style="float: right">Звонок по России бесплатный!</p>--}%

                    </div>
                </div>
            </div>
        </section>

        <div class="container">

            <div class="navbar navbar-default" role="navigation" style="margin: 15px">
                <div class="navbar-header">
                    %{--<a class="navbar-brand" href="/">--}%
                        %{--<asset:image src="logo.gif"/></a>--}%
                    <a class="btn btn-navbar btn-default navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="nb_left pull-left"> <span class="fa fa-reorder"></span></span> <span class="nb_right pull-right">Меню</span> </a>
                </div>

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav" style="margin: auto">
                        <li><a href="/">Главная</a></li>
                        <li><a href="/menu/request">Оставить заявку</a></li>
                        <li><a href="/menu/services">Услуги</a></li>
                        <li><a href="/menu/prices">Тарифы</a></li>
                        <li><a href="/menu/about">О компании</a></li>
                        <li><a href="/menu/contacts">Контакты</a></li>
                        <li><a href="/menu/docs">Документы</a></li>
                    </ul>
                </div>
            </div>
        </div>

    </header>

    <div id="body-content">

        <g:layoutBody/>
    </div>

    <footer>
        <section id="footer_teasers_wrapper">
            <div class="container">
                <div class="row">
                    <div class="footer_teaser col-sm-4 col-md-4">
                        <h4>Транспортная компания "Авто-парк"</h4>
                        <g:if test="${contacts != null}">
                            <p>${contacts.about}</p>

                            <p><i class="fa fa-map-marker"></i> ${contacts.address}</p>

                            <p><i class="fa fa-phone"></i> ${contacts.phone}</p>

                            <p><i class="fa fa-print"></i> ${contacts.fax}</p>

                            <p><i class="fa fa-envelope"></i> ${contacts.email}</p>
                        </g:if>
                    </div>

                    <div class="footer_teaser col-sm-4 col-md-4">
                        <p>&nbsp;</p>

                        <p>&nbsp;</p>

                        <p>&nbsp;</p>

                        <p>Телефона офиса в Москве:</p>

                        <p><i class="fa fa-phone"></i> ${contacts.tel_moscow}</p>
                    </div>

                    <div class="footer_teaser col-sm-4 col-md-4">
                        <p>&nbsp;</p>

                        <p>&nbsp;</p>

                        <p>&nbsp;</p>

                        <p>Телефона офиса в Санкт-Петербурге:</p>

                        <p><i class="fa fa-phone"></i> ${contacts.tel_spb}</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-5">Copyright ©2014 all rights reserved</div>

                    <div class="col-sm-2 col-md-2">
                        <g:render template="/shared/yametrika"></g:render>
                    </div>

                    <div class="text-right col-sm-5 col-md-5">Designed by <a href="http://vk.com/ajrat">Ayrat Valiev</a>
                    </div>
                </div>
            </div>
        </section>
    </footer>
</div>

%{--<script src="http://code.jquery.com/jquery-latest.min.js"></script>--}%
%{--<script>window.jQuery || document.write('<script src="${request.contextPath}/restart_v3/js/jquery-1.9.0.min.js"><\/script>')</script>--}%
%{--<script src="${request.contextPath}/restart_v3/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--}%

<script src="${request.contextPath}/restart_v3/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
<script src="${request.contextPath}/restart_v3/js/prettyPhoto_3.1.5/jquery.prettyPhoto.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${request.contextPath}/restart_v3/js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/easing.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/wow.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/snap.svg-min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/restart_theme.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/collapser.js"></script>
<script type="text/javascript"
        src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCKphaC2szjwNn0RPk-oCNdZJn6zEYePCQ&sensor=true">
</script>

<script type="text/javascript" src="http://vk.com/js/api/openapi.js?115"></script>
<script type="text/javascript">
    VK.Widgets.Group("vk_groups", {mode: 0, width: "250", height: "400", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 80951489);
</script>
<script type="text/javascript" async="" src="http://mc.yandex.ru/metrika/watch.js"></script>

</body>
</html>