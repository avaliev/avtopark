<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 30.07.2017
  Time: 19:21
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Выбор раздела</title>
    <link rel="stylesheet" href="/boostrap/bootstrap.min.css">
    <link rel="stylesheet" href="/css/login.css">
</head>

<body>

<div class="container">
    <h3>Выбор раздела</h3>
    <div class="list-group">
        <g:link class="list-group-item" controller="intent">Заявки</g:link></li>
        <g:link class="list-group-item" controller="city">Список городов</g:link></li>
        <g:link class="list-group-item" controller="pageGroup">Рубрики для информ. страниц</g:link></li>
        <g:link class="list-group-item" controller="custompage">Информационные страницы</g:link></li>
    </div>

</div>
</body>
</html>