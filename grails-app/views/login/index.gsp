<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 01.04.2017
  Time: 21:33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Авторизация</title>
    <link rel="stylesheet" href="/boostrap/bootstrap.min.css">
    <link rel="stylesheet" href="/css/login.css">
</head>

<body>
<div class="container">
    <form class="form-signin" method="post">
        <h2 class="form-signin-heading">Введите логин и пароль</h2>
        <label for="inputEmail" class="sr-only">Login</label>
        <input name="login" minlength="3" type="text" id="inputEmail" class="form-control" placeholder="login" required="" autofocus="">
        <label for="inputPassword" class="sr-only">Password</label>
        <input minlength="6" name="password" type="password" id="inputPassword" class="form-control" placeholder="password" required="">
        %{--<div class="checkbox">--}%
            %{--<label>--}%
                %{--<input type="checkbox" value="remember-me"> Remember me--}%
            %{--</label>--}%
        %{--</div>--}%
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        <div class="alert-danger">${msg}</div>
    </form>

</div>
</body>
</html>