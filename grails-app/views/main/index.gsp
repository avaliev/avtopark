<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.09.14
  Time: 23:24
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Грузоперевозки из ${city} по России</title>
</head>

<body>
<div class="jumbotron">
    <div class="row">
        <div class="col-md-3 col-sm-3">
            <h2>Города</h2>

            %{--<p>${cities.count()}</p>--}%
            <ul class="nav nav-pills nav-stacked">

            <g:each var="city" in="${cities}">

                %{--<g:link controller="gorod" action="${city.urlName}" >${city.name}</g:link>--}%
                <li><a href="gorod/${city.urlName}">${city.name}</a></li>
                %{--<li><a href="#">Петербург</a></li>--}%
                %{--<li><a href="#">Казань</a></li>--}%
             </g:each>
            </ul>
        </div>

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