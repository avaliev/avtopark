<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.09.14
  Time: 23:24
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
        <g:render template="/shared/leftList" model="[list: cities]"></g:render>

        <div class="col-md-6 col-sm-9">
            <h2 class="center-block"> Грузоперевозки по всей России</h2>
        </div>

        <div class="col-md-3 col-sm-9">
            <g:render template="/shared/quickForm"></g:render>
        </div>


    </div>
</div>
</body>
</html>