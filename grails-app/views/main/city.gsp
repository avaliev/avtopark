<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Грузоперевозки из ${city.name} по России</title>
</head>

<body>
<div class="jumbotron">

    <div class="row">
        <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>

        <div class="col-sm-9">
            <h2>грузоперевозки из ${city.name} по России</h2>
        </div>

    </div>
</div>
</body>
</html>