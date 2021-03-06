<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 06.03.2015
  Time: 21:04
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Офисные переезды автомобильным транспортом. Калькулятор стоимости .</title>
    <meta name="keywords" content="переезды офисные газель, бычок, фура рассчитать стоимость">
    <meta name="description"
          content="Переезды по России - быстро и недорого. Офисные переезды по России отдельным транспортом">
</head>

<body>
<h1 class="txt-c">Перевозки для компаний</h1>

<h3 class="txt-c">Осуществляем офисные переезды по всей России и СНГ</h3>

<div class="row">
    <p style="display: none" id="page-name">офисный переезд</p>

    <div class="col-xs-4">
        <img src="/images/office.jpg" alt="переезд квартирный по России " height="300"></div>

    <div class="col-xs-4">
        <table class="preflist">
            <colgroup>
                <col style="width: 10%;">
                <col style="width: 90%;">
            </colgroup>
            <tbody>
            <tr>
                <td></td>
                <td><h3 style="margin-left: 10%">Наши преимущества</h3></td>
            </tr>
            <tr>
                <td>&#10004;</td>
                <td>Невысокая цена</td>
            </tr>
            <tr>
                <td>&#10004;</td>
                <td>Высокая скорость грузоперевозок</td>
            </tr>
            <tr>
                <td>&#10004;</td>
                <td>Гарантия сохранности грузов при транспортировке</td>
            </tr>
            <tr>
                <td>&#10004;</td>
                <td>Возможность выбора наиболее подходящего вида транспорта</td>
            </tr>
            <tr>
                <td>&#10004;</td>
                <td>Система скидок лояльным клиентам</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div class="col-xs-4">
        <img src="/images/office2.jpg" alt="переезд квартирный по России " height="300"></div>
</div>

<div class="col-xs-1"></div>

</div>
<br/> <br/> <br/>

<div class="row">
    <h3 class="txt-c">Не знаете какой транспорт необходим для вашего груза?</h3>

    <div class="col-xs-3"></div>

    <div class="col-xs-3">
        <input style="display: none" id="user_name" class="form-control" name="userName" value="<офисный переезд>"
               type="text"/>
        <input name="phone" id="user_phone" class="form-control user-phone" type="text"
               placeholder="Ваш номер телефона">
    </div>

    <div class="col-xs-3">
        <button style="width: 100%" type="button" class="btn btn-danger" id="send-btn">Узнать у специалиста</button>
    </div>

    <div class="col-xs-3">
    </div>
</div>
<br/> <br/> <br/>

<div class="row">
    <div class="col-xs-3"><img src="/images/i5years.png" width="50%"></div>

    <div class="col-xs-3"><img src="/images/ioffice.png" width="50%"></div>

    <div class="col-xs-3"><img src="/images/isotrd.png" width="50%"></div>

    <div class="col-xs-3"><img src="/images/icars.png" width="50%"></div>
</div>

<div class="row">
    <section class="portfolio_teasers_wrapper">
        <h2 class="fancy section_header">Наш автопарк</h2>

        <div class="portfolio_strict row">
            <div class="col-sm-4 col-md-4">
                <div class="portfolio_item"><a href="#zakaz" class="zakaz-btn" car="газель"
                                               data-path-hover="M 180,190 0,158 0,0 180,0 z">
                    <figure style="background-image:url(/images/gazel1.jpg)">
                        <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                            <path d="M 180,0 0,0 0,0 180,0 z"/>
                        </svg>
                        <figcaption>
                            <p>Газель характеризуется большой маневренностью и хорошо подходит для городских перевозок</p>

                            <div class="view_button">Заказать</div>
                        </figcaption>
                    </figure>
                </a>

                    <div class="portfolio_description">
                        <h3><a href="/menu/request">Газель</a></h3>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-md-4">
                <div class="portfolio_item"><a href="#zakaz" class="zakaz-btn" car="бычок"
                                               data-path-hover="M 180,190 0,158 0,0 180,0 z">
                    <figure style="background-image:url(/images/zil1.jpg)">
                        <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                            <path d="M 180,0 0,0 0,0 180,0 z"/>
                        </svg>
                        <figcaption>
                            <p>ЗИЛ явялется оптимальным перевозчиком любых видов перевозок. Грузоподъемность до 5 тонн.</p>

                            <div class="view_button">Заказать</div>
                        </figcaption>
                    </figure>
                </a>

                    <div class="portfolio_description">
                        <h3><a href="/menu/request">ЗИЛ "Бычок"</a></h3>
                    </div>
                </div>
            </div>

            <div class="col-sm-4 col-md-4">
                <div class="portfolio_item"><a href="#zakaz" class="zakaz-btn" car="фура"
                                               data-path-hover="M 180,190 0,158 0,0 180,0 z">
                    <figure style="background-image:url(/images/fura1.jpg)">
                        <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                            <path d="M 180,0 0,0 0,0 180,0 z"/>
                        </svg>
                        <figcaption>
                            <p>Грузоперевозка фурами является очень удобным вариантом для перемещения габаритных и тяжеловесных объектов</p>

                            <div class="view_button">Заказать</div>
                        </figcaption>
                    </figure>
                </a>

                    <div class="portfolio_description">
                        <h3><a href="/menu/request">Фура</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<div class="row">
    <div class="col-xs-6">
        <h2 class="txt-c">Рассчитайте стоимость <br/> перевозки ваших вещей <br/>  прямо сейчас</h2>

        <div align="center">
            <img style="margin-left: 27%; width: 40%" src="/images/big_arrow.png">
        </div>

    </div>

    <div class="col-xs-6">
        <g:render template="/shared/freeCityCalc"></g:render>
    </div>
</div>

<div class="row">
    <div class="service_details col-xs-12">
        <h2 class="section_header skincolored">Офисные переезды

        </h2>
        <g:render template="/shared/pereezdText2"></g:render>
    </div>
</div>
</body>
</html>