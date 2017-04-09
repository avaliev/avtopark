<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${transport.gname} по России. Быстро  и недорого. Все виды транспорта.</title>
    <meta name="description" content="Догруз, сборный груз, офисные и квартирные переезды.
          Автопарк газелей, камазов, фур. Узнать стоимость перевозки ${contacts.phone}">
</head>

<body>

<div class="row" style="padding: 10px">
    <div class="col-sm-4">
        <img src="/images/${transport.imgUrl}.jpg">
    </div>

    <div class="col-sm-8">
        ${transport.descr}
    </div>
</div>

<div class="row" style="margin: 10px">
    <div class="col-xs-12 col-sm-6">
        <h2 class="txt-c">Рассчитайте стоимость <br/> перевозки ваших вещей <br/>  прямо сейчас</h2>

        <div align="center">
            <img style="margin-left: 27%; width: 40%" src="/images/big_arrow.png">
        </div>

    </div>

    <div class="col-xs-12 col-sm-6">
        <g:render template="/shared/freeCityCalc"></g:render>
    </div>

</div>

<div class="row">
    <g:each in="${cities}" var="c">
        <a href="/transport/${transport.url}/${c.urlName}">${c.name}</a>
    </g:each>
</div>
</body>
</html>