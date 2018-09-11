<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="pages"/>
    <title>Список городов</title>
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
            <th>Назв.</th>
            <th>URL</th>
            <th>Видео</th>
            <th>Описание города</th>
            <th>Текст страницы переездов</th>
            <th>Описание Газели</th>
            <th>Описание ЗИЛ</th>
            <th>Описание Камаза</th>
            <th>Описание Фуры</th>
            <th colspan="2">Действия</th>
        </tr>
        </thead>
        <g:each in="${cities}" var="c">
            <tr>
                <td>${c.name}</td>
                <td>${c.urlName}</td>
                <g:if test="${c.videoLink != null}">
                    <td class="success">+</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.descr != null}">
                    <td class="success">${c.descr.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.aboutPereezd != null}">
                    <td class="success">${c.aboutPereezd.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.aboutGazel != null}">
                    <td class="success">${c.aboutGazel.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.aboutZil != null}">
                    <td class="success">${c.aboutZil.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.aboutKamaz != null}">
                    <td class="success">${c.aboutKamaz.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <g:if test="${c.aboutFura != null}">
                    <td class="success">${c.aboutFura.length()} симв.</td>
                </g:if>
                <g:else>
                    <td class="danger">-</td>
                </g:else>
                <td><a class="small" href="/city/edit?id=${c.id}" target="_blank">Изменить</a></td>
                <td><a class="small" href="/city/cityroutes?id=${c.id}" target="_blank">Маршруты</a></td>
            </tr>
        </g:each>
    </table>
</div>
</body>
</html>