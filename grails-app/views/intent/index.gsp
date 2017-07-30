<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 30.07.2017
  Time: 18:56
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Список последних 50 заявок</title>
</head>

<body>
<h2>Список последних 50 заявок</h2>
<table class="table table-bordered">
    <thead>
    <tr>
        <th>Имя</th>
        <th>Контакты</th>
        <th>Дата</th>
        <th>Отпавка из</th>
        <th>Назначение</th>

    </tr>
    </thead>
    <g:each in="${intents}" var="intent">
        <tr>
            <td>${intent.userName}</td>
            <td>${intent.phone}</td>
            <td><g:formatDate date="${intent.intentDate}" format="dd.MM.yyyy HH:mm"></g:formatDate></td>
            <td>${intent.departure}</td>
            <td>${intent.destination}</td>
        </tr>
    </g:each>

</table>
</body>
</html>