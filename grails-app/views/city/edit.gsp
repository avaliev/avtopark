<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="cities"/>
    <title>Изменить описание города</title>
</head>

<body>
<div class="jumbotron">
    <form action="/city/save" method="post">
        <input type="hidden" name="city.id" value="${city.id}"/>

        <div class="form-group">
            <label>Название города</label>
            <input required name="city.name" disabled value="${city.name}" type="text" class="form-control">
        </div>

        <div class="form-group">
            <label>Название в URL</label>
            <input required name="city.urlName" disabled value="${city.urlName}" type="text" class="form-control">
        </div>

        <div class="form-group">
            <label>Описание города</label>
            <textarea required name="city.descr" placeholder="описание города не должно быть пустым"
                      rows="5" class="form-control">${city.descr}</textarea>
        </div>

        <button type="submit" class="btn btn-success">Сохранить</button>
    </form>
</div>
</body>
</html>