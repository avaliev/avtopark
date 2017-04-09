<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 09.04.2017
  Time: 15:10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>${page.title}</title>
    <meta name="description" content="${page.metaTag}">
</head>

<body>
<div class="jumbotron">
    <div class="row">
        <div class="col-xs-12 col-sm-6">
            <div class="text" style="padding: 10px">
                <p class="font150">${page.title}</p>
                ${page.content}
            </div>
        </div>
        <div class="col-xs-12 col-sm-6">
            <g:render template="/shared/freeCityCalc"></g:render>
        </div>
    </div>
</div>
</body>
</html>