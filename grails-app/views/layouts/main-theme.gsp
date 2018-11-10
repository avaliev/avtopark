<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <title><g:layoutTitle default="Грузоперевозки по всей России"/></title>
    <g:layoutHead/>
    <link rel="shortcut icon" href="${assetPath(src: 'favicon.jpg')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
    %{--<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>--}%
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
<div class="container-fluid" style="min-width: 360px">
    <header>
        <g:if test="${city != null}">
            <g:textField id="city_id" style="display:none" name="city_id" value="${city.id}"/>
        </g:if>
        <g:if test="${route != null}">
            <g:textField id="route_id" style="display:none" name="route_id" value="${route.id}"/>
        </g:if>
        <section class="header" style="height: auto">
            <div class="row">
                <div class="col-xs-6 col-sm-2 logotip" style="display: block">
                    <a class="" href="/" style="display: block">
                        <asset:image src="logo.gif"/></a>
                </div>

                <div class="col-xs-6 col-sm-2">
                    <p class="logist-btn car-btn">Бесплатная консультация логиста</p>

                </div>

                <div class="col-xs-12 col-sm-3">
                    <p class="phone-info" style="">
                        <i style="margin-right: 10px; position: relative; top: 10px" class="fa fa-phone fa-2x"></i>
                        <span class="nobr ya-phone" style="font-size: 170%; margin-top: -20px"><g:if
                                test="${phoneYa != null}">${phoneYa}</g:if><g:else>${contacts.phone}</g:else></span><br>
                        <small style="color: #369fff"><i class="fa fa-envelope"></i>
                            <a style="font-size: 15px" href="mailto:${contacts.email}"
                               target="_top">${contacts.email}</a>
                        </small> <br/>
                    </p>
                </div>

                <div class="col-xs-6 col-sm-3 header-text">
                    Грузоперевозки по России </br>
                    автомобильным транспортом
                </div>

                <div class="col-xs-6 col-sm-2 russia-label">
                    <asset:image src="russia-label.png"/>
                </div>

            </div>
        </section>

        <div class="navbar navbar-default" role="navigation" style="margin: 15px">
            %{--<div class="navbar-header"> <button type="button" style="height: 50px;" class="button_cons car-btn">Бесплатная консультация логиста</button> </div>--}%
            <div class="navbar-header pull-left">
                %{--<button type="button" style="height: 50px;" class="button_cons car-btn">Бесплатная консультация логиста</button>--}%
                <button class="btn btn-navbar btn-default navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-collapse">
                    <span class="nb_left pull-left">
                        <span class="fa fa-reorder"></span></span> <span class="nb_right pull-right">Меню</span>
                </button>
            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav pull-left">
                    <li><a href="/">Главная</a></li>
                    <li><a href="/menu/request">Оставить заявку</a></li>
                    <li><a href="/menu/services">Тарифы и транспорт</a></li>
                    <li><a href="/menu/about">О компании</a></li>
                    <li><a href="/menu/docs">Документы</a></li>
                    <li hidden="true" class="dropdown"><a data-toggle="dropdown" class="dropdown-toggle"
                                                          href="#">Переезды<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/menu/pereezd_dom">Домашний переезд</a></li>
                            <li><a href="/menu/pereezdy">Междугородние переезды</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>

    </header>

    <div class="row">
        <div id="collage-row" class="col-sm-12"><img style="width:100%" src="/images/collage.png"></div>
    </div>

    <div style="padding: 10px">
        <g:layoutBody/>
    </div>
    <g:render template="/shared/modalWindow"></g:render>

    <footer style="padding: 10px;">
        <div class="row">
            <div class="footer_teaser col-sm-4">
                <h4>Транспортная компания "Авто-парк"</h4>
                <g:if test="${contacts != null}">
                    <p>${contacts.about}</p>

                    <p><i class="fa fa-map-marker"></i> ${contacts.address}</p>

                    <p><i class="fa fa-phone"></i> <span class="ya-phone">${contacts.phone}</span></p>

                    <p><i class="fa fa-print"></i> ${contacts.fax}</p>

                    <p><i class="fa fa-envelope"></i> ${contacts.email}</p>
                </g:if>
            </div>

            <div class="footer_teaser col-sm-4">
                <p>&nbsp;</p>

                <p>Телефон офиса в Москве:</p>

                <p><i class="fa fa-phone"></i> ${contacts.tel_moscow}</p>
            </div>

            <div class="footer_teaser col-sm-4">
                <p>&nbsp;</p>
                <h5>Принимаем к оплате:</h5>
                <p><img width="50%" src="/images/epay1.png"></p>
            </div>
        </div>
    </section>
        <section class="copyright">
            <div class="row">
                <div class="col-sm-5">©2014-2017 Материалы  сайта защищены законом об авторских правах</div>

                <g:if env="production">
                    <div class="col-xs-2 col-xs-2">
                        <g:render template="/shared/yametrika"></g:render>
                        <g:render template="/shared/ganalytics"></g:render>
                    </div>
                </g:if>
            </div>
        </section>
    </footer>
</div>

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

<script type="text/javascript"
        src="http://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCaHIKLGChzdf1aZA92V65TkAukRqBQrZc&sensor=true&libraries=places">
</script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-57154755-1', 'auto');
    ga('send', 'pageview');
</script>

</body>
</html>