<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 08.04.2017
  Time: 22:42
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Новая страница</title>
</head>

<body>
<h2>Новая страница</h2>

<div class="jumbotron">
    <form action="/custompage/save" method="post">
        <div class="form-group">
            <label for="url">Адрес страницы (URL)</label>
            <input required name="page.url" value="${page.url}" type="text" class="form-control" id="url"
                   placeholder="url">
        </div>

        <div class="form-group">
            <label for="title">Название страницы (title)</label>
            <input required name="page.title" value="${page.title}" type="text" class="form-control" id="title"
                   placeholder="title">
        </div>

        <div class="form-group">
            <label for="metatag">Meta tag description (не более 100 символов)</label>
            <input required name="page.metaTag" value="${page.metaTag}" type="text" class="form-control" id="metatag">
        </div>
        <textarea name="page.content" required class="form-control" content="${page.content}" rows="3"
                  placeholder="Текст страницы">

        </textarea>
        <br/>
        <br/>
        <button type="submit" class="btn btn-default">Create</button>

    </form>
</div>
</body>
</html>