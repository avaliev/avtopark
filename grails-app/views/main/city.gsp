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
        <div class="col-sm-3">
            <h2>Города</h2>
            <ul class="nav nav-pills nav-stacked">
                <g:each in="${city.routes}" var="route">
                    <li><a href="../marshrut/${route.urlName}">${route.name}</a></li>
                </g:each>

            </ul>
        </div>

        <div class="col-sm-9">
            <h2>грузоперевозки из ${city.name} по России</h2>
        </div>

    </div>
</div>
</body>
</html>