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
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
        <style>
            #header {
                background: rgb(80,200,175);
                height: 100px;
                padding: 10px;
                color: #ffffff;
            }
            #nav-bar {
                background: rgb(0,182,149);
                height: 50px;
                border-bottom: 1px solid #000000;
                border-top: 1px solid #000000;

            }

            #nav-bar ul li {
                display: inline;
                margin-right: 15px;
                font-size: 110%;
                font-weight: bold;
            }
            #body-content {

            }
            #left {
                background: rgb(180, 204, 214);
                width: 200px;
                height: 700px;
                float: left;
            }

            #content{
                background: rgb(180, 204, 214);
                width: 1100px ;
                height: 700px;
                float: left;

            }
            #footer {
                border-top: 1px solid #000000;
                background: rgb(51,153,204);
                background: #505050;
                height: 80px;
                clear: both;
                padding: 10px;
            }
        .brand {
            font-size: 150%;
            float: left;
            display: inline;
        }
        .phone {
            /*float: right;*/
            /*margin-top: -50px;*/
            color: #ffffff;
            font-weight: bold;
            font-size: 110%;
            display: inline;
            float: right;

        }
        .phone span {
            color: #ffffff;
            font-weight: normal;
        }
        .logo {
            margin-bottom: 20px;
        }
        .p-title {
            text-align: center;
        }
        #footer p {
            margin: 0;
            margin-bottom: 5px;
            color: #ffffff;
        }

        .text h1 {
            color: darkblue;
            margin: auto;
            text-align: center;
            margin-top: 10px;
        }
        </style>
		<g:layoutHead/>
	</head>
	<body style="margin: 0; background: rgb(231,238,241)">

    <div style="width: 1300px ; margin: 0 auto">
        <div id="header">
           <div class="logo">Логотип</div>
           <div class="brand">Авто-Парк &copy; Казань</div>
           <div class="phone">Телефон: <span>8-800-5000</span></div>
        </div>
        <div id="nav-bar">
            <ul>
                <li><g:link controller="main" action="index">Главная</g:link></li>
                <li><g:link controller="menu" action="index">Тарифы</g:link></li>
                <li><g:link controller="menu" action="index">Контакты</g:link></li>
            </ul>
        </div>
        <div id="body-content">
            <g:layoutBody/>
        </div>

        <div id="footer">
            <p>
                Email: <span>mail@mail.ru</span>
            </p>
            <p>
                Сотовый: <span>+700000</span>
            </p>
            <p>Горячая линия <span>8-800-0000</span></p>
        </div>
     </div>
		%{--<div id="grailsLogo" role="banner"><a href="http://grails.org"><asset:image src="grails_logo.png" alt="Grails"/></a></div>--}%

		%{--<div class="footer" role="contentinfo"></div>--}%
		%{--<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>--}%
	</body>
</html>
