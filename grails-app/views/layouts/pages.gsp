<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <link rel="stylesheet" href="/boostrap/bootstrap.min.css">
    <title><g:layoutTitle default="Управление страницам"/></title>

</head>

<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">На сайт</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/login">Главное меню</a></li>
            <li><a href="/intent">Заявки</a></li>
            <li><a href="/city">Список городов</a></li>
            <li><a href="/custompage">Информ. страницы</a></li>
            <li><a href="/pageGroup">Рубрики страниц</a></li>
        </ul>
    </div>
</nav>

<div class="container-fluid">
    <g:layoutBody/>
</div>
</body>
</html>