<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 06.11.14
  Time: 16:07
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Заявка на перевозку</title>
</head>

<body>
<div class="jumbotron">
    <g:if test="${message!=null}" >
        <div  class="alert alert-danger form-group">${message}</div>
    </g:if>
    <div  class="alert alert-danger form-group">Произошла ошибка при отправке! Попробуйте заново!</div>
</div>
</body>
</html>