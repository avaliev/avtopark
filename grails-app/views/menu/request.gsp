<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 29.10.14
  Time: 11:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Заявка на перевозку</title>
    <meta name="keywords" content="грузоперевозки по России,заказ грузоперевозки">
    <meta name="description" content="сделать заказ на грузоперевозку по России">
</head>

<body>
<div class="jumbotron">
    <h2 class="text-center">Оформить заявку на расчет стоимости перевозки</h2>
    <form class="form-horizontal" role="form" action="/menu/intent" method="post">
        <p class="col-sm-offset-2 col-sm-10">Контактная информация</p>
        <div class="form-group">
            <label for="user_name" class="col-sm-2 control-label">Ваше имя</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="user_name" name="userName" >
            </div>
        </div>

        <div class="form-group">
            <label for="phone" class="col-sm-2 control-label">Номер телефона</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="phone" name="phone">
            </div>
        </div>

        <div class="form-group">
            <label for="email" class="col-sm-2 control-label">Email <small>(необязательно)</small></label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="email" name="email">
            </div>
        </div>

        <p class="col-sm-offset-2 col-sm-10">Дополнительная информация о грузе:</p>
        <div class="form-group">
            <label for="departure" class="col-sm-2 control-label">Место погрузки:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="departure" name="departure">
            </div>
        </div>

        <div class="form-group">
            <label for="destination" class="col-sm-2 control-label">Место выгрузки:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="destination" name="destination">
            </div>
        </div>

        <div class="form-group">
            <label for="weight" class="col-sm-2 control-label">Вес:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="weight" name="weight">
            </div>
        </div>

        <div class="form-group">
            <label for="volume" class="col-sm-2 control-label">Объём:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="volume" name="volume">
            </div>
        </div>

        <div class="form-group">

            <label for="comment" class="col-sm-2 control-label">Особенности груза:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="comment" name="comment">
            </div>

        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-8">
                <button type="submit" class="btn btn-primary">Отправить</button>
            </div>
        </div>
        <input type="text" style="display: none" class="form-control" id="main_form_flag" name="isMainForm" value="true">
    </form>
</div>
</body>
</html>