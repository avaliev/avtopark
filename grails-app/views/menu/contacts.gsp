<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 29.10.14
  Time: 13:04
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Транспортная компания "Авто-парк" группы компаний ООО "Гефест Групп 16"</title>
</head>

<body>
<div class="jumbotron">
    <div class="row">
        %{--<div class="col-lg-2 col-md-3 col-sm-3 col-xs-5">--}%
            %{--<h3 class="txt-c">Группа во Вконтакте</h3>--}%
            %{--<div style="float: right; width: 100%" id="vk_groups"></div>--}%
        %{--</div>--}%

        <div class="col-sm-1"></div>
        <div class=" col-sm-8">
            <section class="hgroup">
                <h1>Контакты</h1>
                <ul class="breadcrumb pull-right">
                    <li><a href="index.html">Главная</a></li>
                    <li class="active">Контакты</li>
                </ul>
            </section>

            <div class="about">
                <h3>Транспортная компания "Авто-парк"</h3>

                <p> Горячая линия (бесплатно по всей России): <span class="blue">${contacts.phone}</span></p>

                <p>Телефон офиса в Москве: <span class="blue">${contacts.tel_moscow}</span></p>

                <p>Телефон офиса в Санкт-Петербурге: <span class="blue">${contacts.tel_spb}</span></p>

                <p>Телефон офиса в Казани:  <span class="blue">${contacts.tel_kazan}</span></p>

                <div style="margin-top: 5%">
                    <h4>Штаб-квартира:</h4>
                    <p>${contacts.address}</p>
                    <img src="http://maps.googleapis.com/maps/api/staticmap?center=55.760293, 49.147683&zoom=15&size=700x400&markers=55.760293, 49.147683&key=AIzaSyCweSmzfOW9bOdnpHaxlpqamwQ62pFvQCA"/>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            %{--<g:render template="/shared/quickForm"></g:render>--}%
            %{--<g:render template="/shared/calculator"></g:render>--}%
            <div style="float: right; width: 100%" id="vk_groups"></div>
        </div>

    </div>
</div>

</body>
</html>