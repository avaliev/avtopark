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
        <div class="col-xs-12 col-sm-9">

            <h1 class="center-block txt-c">${page.group.title}</h1>

            <h3 class="txt-c">${page.title}</h3>

            <p class="descr">
                ${page.content}
            </p>

            <div class="row">
                <div class="col-sm-5">
                    <h2 class="txt-c">Рассчитайте стоимость <br/> перевозки ваших вещей <br/>  прямо сейчас</h2>

                    <div align="center">
                        <img style="margin-left: 27%; width: 40%" src="/images/big_arrow.png">
                    </div>

                </div>

                <div class="col-sm-7">
                    <g:render template="/shared/freeCityCalc"></g:render>

                </div>
            </div>
        </div>

        <div class="col-md-3" style="margin-top:5px; padding-right: 0px">
            <g:render template="/shared/quickForm"></g:render>
        </div>
    </div>
</div>
</body>
</html>