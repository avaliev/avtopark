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
        <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>

        <div class="col-sm-9">
            <h2> Грузоперевозки по маршруту ${route.name}</h2>
        </div>

    </div>
</body>
</html>