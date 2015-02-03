<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 23.01.2015
  Time: 17:32
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Тарифы на услуги перевозки</title>
</head>
<body>
<div class="jumbotron">
    <h3 class="txt-c">Здесь представлены тарифы на услуги перевозки</h3>
    <table class="table table-bordered prices">
        <thead>
        <tr>
            <th></th>
            <th>Межгород</th>
            <th>Сборный груз</th>
            <th>Догруз</th>
            <th>По городу</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th>Газель</th>
            <td>15 руб./км</td>
            <td rowspan="4">900 руб., </br> доставка груза в течении 24 часов.</td>
            <td rowspan="4">от 1500 руб., </br> доставка на следующий день.</td>
            <td rowspan="4">от 350 руб./час до 995 руб./час</Td>
        </tr>
        <tr>
            <th>ЗИЛ ("Бычок")</th>
            <td>20 руб./км</td>
        </tr>
        <tr>
            <th>Камаз</th>
            <td>25 руб./км</td>
        </tr>
        <tr>
            <th>Фура</th>
            <td>30 руб./км</td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>