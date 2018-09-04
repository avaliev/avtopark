<%@ page import="ru.avtopark.PageGroup" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Управление странциами</title>
</head>

<body>
<h2>Рубрики информационных страниц</h2>
<a class="btn btn-success pull-right" href="/pageGroup/create">Создать новую рубрику</a>
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

    <g:each var="page" in="${pageGroups}">
        <tr>
            <td>${page.title}</td>
            <td>${page.url}</td>
            <td width="20%"><a href="/pageGroup/edit?id=${page.id}">редактировать</a></td>
        </tr>
    </g:each>
    </tbody>
</table>
</body>
</html>
