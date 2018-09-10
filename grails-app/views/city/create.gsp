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
    <title>Новый город</title>
</head>

<body>
<h2>Новый город</h2>

<form action="/city/save" method="post">
    <input type="hidden" name="city.id" value="${city.id}"/>

    <div class="form-group">
        <label>Название города</label>
        <input required name="city.name" value="${city.name}" type="text" class="form-control">
    </div>

    <div class="form-group">
        <label>Название города в род. падеже</label>
        <input required name="city.gname" value="${city.gname}" type="text" class="form-control">
    </div>

    <div class="form-group">
        <label>Название в URL</label>
        <input required name="city.urlName" value="${city.urlName}" type="text" class="form-control">
    </div>

    <div class="form-group">
        <label>Ссылка на видео</label>
        <input required name="city.videoLink" value="${city.videoLink}" type="text" class="form-control">
    </div>

    <div class="form-group">
        <label>Описание города</label>
        <textarea required name="city.descr" placeholder="описание города не должно быть пустым"
                  rows="5" class="form-control">${city.descr}</textarea>
    </div>

    <div class="form-group">
        <label>Описание для <b>Газели</b> на странице города</label>
        <textarea required name="city.descr"
                  rows="5" class="form-control">${city.aboutGazel}</textarea>
    </div>

    <div class="form-group">
        <label>Описание для <b>ЗИЛ (бычок)</b> на странице города</label>
        <textarea required name="city.descr"
                  rows="5" class="form-control">${city.aboutZil}</textarea>
    </div>

    <div class="form-group">
        <label>Описание для <b>Камаза</b> на странице города</label>
        <textarea required name="city.descr"
                  rows="5" class="form-control">${city.aboutKamaz}</textarea>
    </div>

    <div class="form-group">
        <label>Описание для <b>фуры</b> на странице города</label>
        <textarea required name="city.descr"
                  rows="5" class="form-control">${city.aboutFura}</textarea>
    </div>

    <div class="form-group">
        <label>Текст для страницы переездов из города</label>
        <textarea required name="city.descr"
                  rows="5" class="form-control">${city.aboutPereezd}</textarea>
    </div>

    <button type="submit" class="btn btn-success">Сохранить</button>
</form>
</body>
</html>