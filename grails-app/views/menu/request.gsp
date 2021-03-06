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
    <form class="form-horizontal" id="full_form" role="form" action="/menu/intent" method="post">
        <p class="col-sm-offset-2 col-sm-10">Контактная информация</p>
        <div class="form-group">
            <label for="user_name" class="col-sm-2 control-label">Ваше имя</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="user_name" name="userName" >
            </div>
        </div>

        <div class="form-group">
            <label for="user_phone" class="col-sm-2 control-label">Номер телефона</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="user_phone" name="phone">
            </div>
        </div>

        <p class="col-sm-offset-2 col-sm-10">Дополнительная информация о грузе:</p>
        <div class="form-group">
            <label for="departure" class="col-sm-2 control-label">Город погрузки:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="departure" name="departure">
            </div>
        </div>

        <div class="form-group">
            <label for="destination" class="col-sm-2 control-label">Город выгрузки:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="destination" name="destination">
            </div>
        </div>

        <div class="form-group">

            <label for="comment" class="col-sm-2 control-label">Особенности груза:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="comment" name="comment">
            </div>

        </div>
        <div class="col-sm-offset-2">
            <p style="font-size: 12px; color: black" for="agreement">
                <input type="checkbox" checked id="agreement">
                Согласен на отправку и обработку моих данных</p>

            <p style="font-size: 11px; color: black">Ваши данные не будут
            использоваться для рассылки и не передаются третьим лицам</p>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-8">
                <button  id="main_form_btn" type="submit" class="btn btn-danger">Отправить</button>
            </div>
        </div>
        <input type="text" style="display: none" class="form-control" name="isMainForm" value="true">
    </form>
</div>
</body>
</html>