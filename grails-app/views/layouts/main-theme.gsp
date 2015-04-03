<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width">
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
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
<div class="container">
    <header>
        <g:if test="${city!=null}">
            <g:textField id="city_id" style="display:none" name="city_id" value="${city.id}"  />
        </g:if>
        <g:if test="${route!=null}">
            <g:textField id="route_id" style="display:none" name="route_id" value="${route.id}"  />
        </g:if>
        <section class="header">
            <div class="container header" style="height: auto">
                <div class="row">
                    <div class="col-xs-2 logotip" >
                        <a class="" href="/">
                            <asset:image src="logo.gif"/></a>
                    </div>

                    <div class="col-xs-3 header-text" >
                        Грузоперевозки по России </br>
                        автомобильным транспортом
                    </div>

                    <div class="col-xs-2 russia-label" style="top: -10px">
                            <asset:image src="russia-label.png"/>
                    </div>


                    <div class="col-xs-4">
                        <p class="phone-info">   <i style="margin-right: 10px" class="fa fa-phone fa-lg"></i> Горячая линия:
                        <span class="nobr ya-phone">  <g:if test="${phoneYa!=null}"> ${phoneYa}</g:if><g:else>${contacts.phone}</g:else> </span>  <br>
                        <small>Звонок по России бесплатный!</small> <br>
                        <small><i class="fa fa-envelope"></i> ${contacts.email}</small> <br/>
                        </p>
                        %{--<p style="float: right">Звонок по России бесплатный!</p>--}%

                    </div>
                </div>
            </div>
        </section>

        <div class="container">

            <div class="navbar navbar-default" role="navigation" style="margin: 15px">
                %{--<div class="navbar-header"> <button type="button" style="height: 50px;" class="button_cons car-btn">Бесплатная консультация логиста</button> </div>--}%
                <div class="navbar-header">
                %{--<button type="button" style="height: 50px;" class="button_cons car-btn">Бесплатная консультация логиста</button>--}%
                <button class="btn btn-danger btn-lg car-btn">Бесплатная консультация логиста</button>
                    <a class="btn btn-navbar btn-default navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="nb_left pull-left">
                        <span class="fa fa-reorder"></span></span> <span class="nb_right pull-right">Меню</span> </a></div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav pull-right">
                        <li><a href="/">Главная</a></li>
                        <li><a href="/menu/request">Оставить заявку</a></li>
                        <li><a href="/menu/services">Тарифы</a></li>
                        <li><a href="/menu/about">О компании</a></li>
                        <li><a href="/menu/docs">Документы</a></li>
                        <li hidden="true" class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle"
                                                              href="#">Переезды<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/menu/pereezd1">Домашний переезд</a></li>
                                <li><a href="/menu/pereezd2">Офисный переезд</a></li>
                                <li><a href="/menu/pereezdy">Междугородние переезды</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                %{--<div>--}%
                    %{--<button type="button" style="height: 50px; float: right" class="button_cons car-btn">Бесплатная консультация логиста</button>--}%
                %{--</div>--}%

            </div>
        </div>

    </header>

    <div>
        <g:layoutBody/>
    </div>
    <g:render template="/shared/modalWindow"></g:render>

    <footer>
        <section id="footer_teasers_wrapper">
            <div class="container">
                <div class="row">
                    <div class="footer_teaser col-xs-4 col-xs-4">
                        <h4>Транспортная компания "Авто-парк"</h4>
                        <g:if test="${contacts != null}">
                            <p>${contacts.about}</p>

                            <p><i class="fa fa-map-marker"></i> ${contacts.address}</p>

                            <p><i class="fa fa-phone"></i> <span class="ya-phone"> ${contacts.phone}</span></p>

                            <p><i class="fa fa-print"></i> ${contacts.fax}</p>

                            <p><i class="fa fa-envelope"></i> ${contacts.email}</p>
                        </g:if>
                    </div>

                    <div class="footer_teaser col-xs-4 col-xs-4">
                        <p>&nbsp;</p>
                        <p>Телефон офиса в Москве:</p>
                        <p><i class="fa fa-phone"></i> ${contacts.tel_moscow}</p>
                        <p>Телефон офиса в Санкт-Петербурге:</p>

                        <p><i class="fa fa-phone"></i> ${contacts.tel_spb}</p>
                    </div>

                    <div class="footer_teaser col-xs-4 col-xs-4">
                        <p>&nbsp;</p>
                        <h5>Принимаем к оплате:</h5>
                        <p><img width="50%" src="/images/epay1.png"></p>


                    </div>
                </div>
            </div>
        </section>
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-xs-5 col-xs-5"> ©2014-2015 Материалы  сайта защищены законом об авторских правах</div>
                    <div class="col-xs-2 col-xs-2">
                        <g:render template="/shared/yametrika"></g:render>
                        <g:render template="/shared/ganalytics"></g:render>
                    </div>
                </div>
            </div>
        </section>
    </footer>
</div>

%{--<script src="http://code.jquery.com/jquery-latest.min.js"></script>--}%
%{--<script>window.jQuery || document.write('<script src="${request.contextPath}/restart_v3/js/jquery-1.9.0.min.js"><\/script>')</script>--}%
%{--<script src="${request.contextPath}/restart_v3/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>--}%
<script src="${request.contextPath}/restart_v3/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${request.contextPath}/restart_v3/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
<script src="${request.contextPath}/restart_v3/js/prettyPhoto_3.1.5/jquery.prettyPhoto.js" type="text/javascript"
        charset="utf-8"></script>
<script src="${request.contextPath}/restart_v3/js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/jquery.ui.totop.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/easing.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/wow.min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/snap.svg-min.js"></script>
<script type="text/javascript" src="${request.contextPath}/restart_v3/js/restart_theme.js"></script>
%{--<script type="text/javascript" src="${request.contextPath}/js/jquery.maskedinput.min.js"></script>--}%

%{--<script type="text/javascript" src="${request.contextPath}/restart_v3/js/collapser.js"></script>--}%
%{--<script type="text/javascript" src="${request.contextPath}/respond.min.js"></script>--}%
<script type="text/javascript"
        src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCKphaC2szjwNn0RPk-oCNdZJn6zEYePCQ&sensor=true">
</script>

<script type="text/javascript" src="http://vk.com/js/api/openapi.js?115"></script>
<script type="text/javascript">
    VK.Widgets.Group("vk_groups", {mode: 0, width: "250", height: "400", color1: 'FFFFFF', color2: '2B587A', color3: '5B7FA6'}, 80951489);
</script>
%{--<script type="text/javascript" async="" src="http://mc.yandex.ru/metrika/watch.js"></script>--}%

<link rel="stylesheet" href="//cdn.callbackhunter.com/widget/tracker.css">
<script type="text/javascript" src="//cdn.callbackhunter.com/widget/tracker.js"
        charset="UTF-8"></script> <script type="text/javascript">var hunter_code="38cfb07d6bcf47514787d20cf2368c5e";</script>
<!-- BEGIN JIVOSITE CODE {literal} -->
<script type='text/javascript'>
    (function(){ var widget_id = 'FiV2EOYNa8';
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);})();</script>
<!-- {/literal} END JIVOSITE CODE -->

</body>
</html>