<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city} по России</title>
</head>

<body>
<div class="jumbotron">

    <div class="row">

        <div class="col-sm-2 leftList">
            <h4>Направления из ${city.gname}</h4>
            <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
        </div>

        <div class="col-md-7 col-sm-9 center-content">
            <h3>Грузоперевозки по маршруту ${route.name}</h3>
            <h5>Доставка грузов по всем городам и регионам России. Отправляем догрузом!</h5>
            <h4>Перевозки</h4>

            <p class="descr">В последние годы грузоперевозки по России начали активно развиваться. К каждым годом их объемы увеличиваются. Для успешного ведения экономической деятельности важной является доставка груза в установленный срок, поэтому специализированные транспортные компании постоянно совершенствуются в этом. В то время, когда раньше для перевозки груза необходимо было самому найти машину и погрузить в нее груз, то сейчас достаточно просто обратиться за помощью к профессионалам. Большой выбор автотранспорта с различными характеристиками способствует доставке груза из Владимира в Москву за один заход, без привлечения нескольких авто единиц.
            </p>
        </div>

        <div class="col-md-3 col-sm-9">
            <g:render template="/shared/quickForm"></g:render>
        </div>
    </div>

</div>
</body>
</html>