<%--
  Created by IntelliJ IDEA.
  User: Airat
  Date: 09.09.2018
  Time: 15:45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Страницы маршрутов из города</title>
</head>

<body>
<h2>Страницы маршрутов города ${city.name}</h2>

<div class="jumbotron">
    <table class="table table-responsive">
        <thead>
        <tr>
            <th>Название</th>
            <th>URL</th>
            <th>Текст</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${city.routes}" var="r">
            <tr>
                <td>${r.name}</td>
                <td>${r.urlName}</td>
                <g:if test="${r.content != null}">
                    <td class="success">${r.content.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <td><a class="small" href="/route/edit?id=${r.id}">Изменить</a></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>