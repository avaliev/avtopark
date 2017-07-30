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
    <ul>
        <li><g:link controller="intent">Заявки</g:link></li>
        <li><g:link controller="city">Список городов</g:link></li>
        <li><g:link controller="custompage">Уникальные страницы (информационные)</g:link></li>
    </ul>

</div>
</body>
</html>