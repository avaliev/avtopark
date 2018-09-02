<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="pages">
    <title>Редактирование/Создание рубрики</title>
</head>

<body>
<h2>Редактирование/Создание рубрики</h2>
<div class="jumbotron">
    <form action="/pageGroup/save" method="post">
        <div class="form-group">
            <label for="url">Адрес страницы (URL)</label>
            <input required name="pageGroup.url" value="${pageGroup.url}" type="text" class="form-control" id="url"
                   placeholder="url">
        </div>

        <div class="form-group">
            <label for="title">Название рубрики(title)</label>
            <input required name="pageGroup.title" value="${pageGroup.title}" type="text" class="form-control" id="title"
                   placeholder="title">
        </div>

        <br/>
        <button type="submit" class="btn btn-default">Сохранить</button>

    </form>
</div>
</body>
</html>
