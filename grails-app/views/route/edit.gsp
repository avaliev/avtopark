<%--
  Created by IntelliJ IDEA.
  User: Airat
  Date: 10.09.2018
  Time: 18:21
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="cities">
    <title>Редактирование</title>
</head>

<body>
<div class="jumbotron">
    <h3>Редактирование маршрута ${route.name}</h3>

    <div class="alert-info">${flash.message != null ? flash.message : ""}</div>

    <form action="/route/save" method="post">
        <input type="hidden" name="route.id" value="${route.id}"/>

        <div class="form-group">
            <label>Название города</label>
            <input required name="route.name" value="${route.name}" type="text" class="form-control">
        </div>

        <div class="form-group">
            <label>Ссылка в URL</label>
            <input required name="route.urlName" value="${route.urlName}" type="text" class="form-control">
        </div>

        <div class="form-group">
            <label>Текст</label>
            <textarea  name="route.content" placeholder="Текст для страницы маршрута"
                      rows="5" class="form-control">${route.content}</textarea>
        </div>

        <button type="submit" class="btn btn-success">Сохранить</button>
    </form>
</div>
</body>
</html>