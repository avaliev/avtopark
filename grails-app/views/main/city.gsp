<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city.gname} по России</title>
</head>

<body>
<div class="jumbotron">

    <div class="row">

        <div class="col-sm-3 leftList">
            <h4>Направления из ${city.gname} </h4>
            <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
        </div>


        <div class="col-md-6 col-sm-9">
            <h3>Грузоперевозки из ${city.gname} по России</h3>
                <p class="descr">${city.descr}</p>
                <p class="descr">${city.descr1}</p>


        </div>

        <div class="col-md-3 col-sm-9">
            <g:render template="/shared/quickForm"></g:render>
        </div>

    </div>
</div>
</body>
</html>