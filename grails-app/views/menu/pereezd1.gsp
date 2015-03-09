<%--
  Created by IntelliJ IDEA.
  User: Айрат
  Date: 06.03.2015
  Time: 21:03
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Домашние переезды автомобильным транспортом. Калькулятор  стоимости. </title>
    <meta name="keywords" content="переезды домашние газель, бычок, фура рассчитать стоимость">
    <meta name="description"
          content="Переезды по России - быстро и недорого. Домашние переезды по России отдельным транспортом">
</head>

<body>
    <h1 class="txt-c">Перевозка домашних вещей</h1>


    <h3 class="txt-c">Быстро и надежно перевезем ваши в любой город России и СНГ</h3>

    <div class="row">
        <div style="display: none" id="pereezdt">домашний</div>
        %{--<div class="col-xs-2"> </div>--}%
        <div class="col-xs-3">
            <img src="/images/kvart_pereezd.jpg" alt="переезд квартирный по России " height="300">
        </div>
        <div class="col-xs-5"/>

        <table class="preflist">
            <colgroup>
                <col  style="width: 10%;">
                <col  style="width: 90%;">
            </colgroup>
            <tbody>
            <tr>
                <td></td>
                <td> <h3>Наши преимущества</h3></td>
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
            <img src="/images/dom-pereezd.jpg" alt="переезд квартирный по России " height="300">
        </div>

    </div>
<br/> <br/> <br/>
    <div class="row">
        <h3 class="txt-c">Не знаете какой транспорт необходим для вашего груза?</h3>
        <div class="col-xs-3"> </div>
        <div class="col-xs-3">
            <input style="display: none" id="user_name" class="form-control" name="userName" value="<домашний переезд>" type="text" />
            <input name="phone" id="user_phone"  class="form-control" type="text" placeholder="Ваш номер телефона">
        </div>
            <div class="col-xs-3">
                <button style="width: 100%" type="button" class="btn btn-success" id="send-btn">Узнать у специалиста</button>
            </div>
            <div class="col-xs-3">
            </div>
    </div>
    <div class="row">
        <section class="portfolio_teasers_wrapper" id="zakaz">
            <h2 class="fancy section_header">Наш автопарк</h2>
            <div class="portfolio_strict row">
                <div class="col-sm-4 col-md-4">
                    <div class="portfolio_item"> <a href="#zakaz" class="zakaz-btn" car="газель" data-path-hover="M 180,190 0,158 0,0 180,0 z">
                        <figure style="background-image:url(/images/newgazel.jpg)">
                            <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                                <path d="M 180,0 0,0 0,0 180,0 z"/>
                            </svg>
                            <figcaption>
                                <p>Газель характеризуется большой маневренностью и хорошо подходит для городских перевозок. Недорогая машина грузоподъемностью 2 тонны </p>
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
                    <div class="portfolio_item"> <a href="#zakaz" car="бычок" class="zakaz-btn" data-path-hover="M 180,190 0,158 0,0 180,0 z">
                        <figure style="background-image:url(/images/zil2.jpg)">
                            <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                                <path d="M 180,0 0,0 0,0 180,0 z"/>
                            </svg>
                            <figcaption>
                                <p>ЗИЛ явялется оптимальным перевозчиком любых видов перевозок. Грузоподъемность до 5 тонн. </p>
                                <div class="view_button car-btn">Заказать</div>
                            </figcaption>
                        </figure>
                    </a>
                        <div class="portfolio_description">
                            <h3><a href="/menu/request">ЗИЛ "Бычок"</a></h3>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-md-4">
                    <div class="portfolio_item"> <a href="#zakaz" class="zakaz-btn" car="фура" data-path-hover="M 180,190 0,158 0,0 180,0 z">
                        <figure style="background-image:url(/images/fura-2.jpg)">
                            <svg viewBox="0 0 180 320" preserveAspectRatio="none">
                                <path d="M 180,0 0,0 0,0 180,0 z"/>
                            </svg>
                            <figcaption>
                                <p>Грузоперевозка фурами является очень удобным вариантом для перемещения габаритных и тяжеловесных объектов. ( до 20 тонн)</p>
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
        <h2 class="txt-c">Рассчитайте стоимость перевозки ваших вещей прямо сейчас</h2>
        <div align="center">
            <img src="/images/big_arrow.png">
        </div>

    </div>
    <div class="col-xs-6">
        <g:render template="/shared/calculatornew"></g:render>
    </div>
</div>
    <div class="row">
        <div class="service_details col-xs-12">
            <h2 class="section_header skincolored">Домашние переезды
            </h2>
            <p class="descr">
                Готовитесь к переезду? Тогда вам точно понадобятся услуги грузоперевозок. С их помощью вы без проблем сможете перевезти на дачу свой старый диван, пианино своей любимой дочери на новую квартиру, шкафчики в новый офис и многое другое.
                Существует огромное множество различных возможностей заказать грузоперевозку, однако не нужно доверять всем этим вариантам.
                Очень часто клиенты нашей компании рассказывают нам о разных неприятных ситуациях, которые возникли в связи с некачественной работой некоторых агентств. Однако сотрудники нашей компании отличаются аккуратностью и максимальной пунктуальностью. Помимо этого, они всегда ответственно подходят к любому делу.
                К услугам грузоперевозок относится перевозка любых видов мебели, а также различной бытовой техники. Если вы планируете переезд, то услуги нашей компании окажут для вас незаменимую помощь.
                Переезд в новую квартиру, в новым дом, безусловно является важнейшим мероприятием в жизни любой семьи. Важно обеспечить сохранность всех вещей и ценностей.
                Тут немаловажный момент - это выбор <strong>грузовой машины для переезда</strong>. Наша транспортная компания поможет в перевозке.
            Предлагаем воспользоваться услугой нашей компании <strong>"Переезд без хлопот" </strong>.
            Вы можете позвонить нам еще на этапе планирования переезда чтобы узнать все моменты, нюансы и конечно же цены.
            Мы представим грузчиков, самую оптимальную грузомашину, так же обеспечив Вас полезными советами для переезда которые помогут сохранить особо важные вещи или технику.
            </p>
        </div>
    </div>


</body>
</html>