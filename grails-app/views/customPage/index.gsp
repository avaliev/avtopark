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
        <th>Рубрика</th>
        <th>URL</th>
        <th>Действия</th>
    </tr>
    </thead>

    <tbody>
    <g:each var="page" in="${pages}">
        <tr>
            <td>${page.title}</td>
            <td>${page.group?.title}</td>
            <td><a href="/p/${page.group?.url}/${page.url}" target="_blank">${page.url}</a></td>
            <td width="20%"><a href="/custompage/edit?id=${page.id}">редактировать</a></td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>