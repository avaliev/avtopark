<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page defaultCodec="none" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city.gname} по России. Быстро  и недорого. Все виды транспорта.</title>
    <meta name="description" content="
          Офисные и квартирные переезды.
          Автопарк газелей, камазов, фур. Узнать стоимость перевозки ${contacts.phone}">
</head>

<body>
<p style="display: none" id="page-name">${city.name}</p>


<div class="row">
    <div class=" col-md-9">

        <h1 class="txt-c font150">Перевозка личных вещей из ${city.gname} по России быстро и недорого</h1>
        <h4 class="txt-c blue font150">Автомобильные перевозки и доставка из ${city.gname} по городам Росии догрузом или отдельным транспортом</h4>

        <g:render template="/shared/pereezd"></g:render>

        <div class="row">
            <div class="col-sm-5">
                <h2 class="txt-c">Рассчитайте стоимость <br/> перевозки ваших вещей <br/>  прямо сейчас</h2>

                <div align="center">
                    <img style="margin-left: 27%; width: 40%" src="/images/big_arrow.png">
                </div>

            </div>

            <div class="col-sm-7">
                <g:render template="/shared/freeCityCalc"></g:render>

            </div>
        </div>

        <hr/>
        <g:render template="/shared/services"></g:render>
        <hr/>


    </div>

    <div class=" col-md-3">
        <g:render template="/shared/quickForm"></g:render>
        <div class="reis">
            <b>Машин в рейсе:</b>  <span class="label label-info"></span>
        </div>

        <div class="vypol">
            <b>Выполнено заявок за сегодня:</b>  <span class="label label-info"></span>
        </div>

        <g:render template="/shared/transportList"></g:render>
        <g:render template="/shared/custompages"></g:render>

    </div>
</div>

</body>
</html>