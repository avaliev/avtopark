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
        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-5 leftList">
            <h3 class="txt-c">Грузоперевозки по городам</h3>
            <g:render template="/shared/leftList" model="[list: cities]"></g:render>
        </div>

        <div class="col-lg-7 col-md-9 col-sm-9 col-xs-7">
            <section class="hgroup">
                <h1>О нас</h1>

                <h2>Мы являемся транспортной компанией которая осуществляет <strong>грузоперевозки по России</strong> по всем направлениям. Особенностью нашей компании является индивидуальный подход к каждому клиенту.
                Мы подберем оптимальный вариант для Вас в зависимости от характеристика груза или товаров, а так же учитывая другие предпочтения. Для этого вам нужно заполнить и отправить на нашем сайте <a
                        href="/menu/request">форму заявки</a></h2>
                <ul class="breadcrumb pull-right">
                    <li><a href="index.html">Главная</a></li>
                    <li class="active">О компании</li>
                </ul>
            </section>

            <div class="about">
                <h3>Контакты ТК "Авто-парк"</h3>

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

        <div class="col-lg-3 col-md-9 col-sm-9 col-xs-12">
            %{--<g:render template="/shared/quickForm"></g:render>--}%
            %{--<g:render template="/shared/calculator"></g:render>--}%
            <g:render template="/shared/vkwidget"></g:render>
        </div>
    </div>
</div>

</body>
</html>