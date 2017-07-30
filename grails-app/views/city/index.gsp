<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 30.07.2017
  Time: 14:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="cities"/>
    <title>Список городов</title>
    <link rel="stylesheet" href="/boostrap/bootstrap.min.css">
</head>

<body>

<div class="jumbotron">
    <div class="row">
        <div class="col-sm-6"><h2>Список городов</h2></div>

        <div class="col-sm-6 pull-right">
            <a class="btn btn-success pull-right" href="/city/create">Новый город</a></div>
    </div>


    <div class="alert-info">${flash.message != null ? flash.message : ""}</div>
    <table class="table table-responsive">
        <thead>
        <tr>
            <th>ID</th>
            <th>Назв.</th>
            <th>Назв.(род. падеж)</th>
            <th>URL</th>
            <th>Редактирование</th>
        </tr>
        </thead>
        <g:each in="${cities}" var="c">
            <tr>
                <td>${c.id}</td>
                <td>${c.name}</td>
                <td>${c.gname}</td>
                <td>${c.urlName}</td>
                <td><a href="/city/edit?id=${c.id}">Изменить</a></td>
            </tr>
        </g:each>
    </table>
</div>
</body>
</html>