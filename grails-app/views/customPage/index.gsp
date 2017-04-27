<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 01.04.2017
  Time: 21:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Управление странциами</title>
</head>

<body>
<h2>Управление страницами</h2>
<a class="btn btn-success pull-right" href="/custompage/create">Создать страницу</a>
<br/>
<br/>
<br/>

<table class="table table-striped">
    <thead>
    <tr>
        <th>Название</th>
        <th>URL</th>
        <th>Действия</th>
    </tr>
    </thead>


    <g:each var="page" in="${pages}">
        <tbody>
        <tr>
            <td>${page.title}</td>
            <td><a href="/p/${page.url}">${page.url}</a></td>
            <td width="20%"><a href="/custompage/edit?url=${page.url}">редактировать</a></td>
        </tr>
        </tbody>
    </g:each>
</table>
</body>
</html>