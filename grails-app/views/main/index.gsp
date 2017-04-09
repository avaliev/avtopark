<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.09.14
  Time: 23:24
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page defaultCodec="none" %>

<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки по России</title>
    <meta name="description"
          content="Грузоперевозки по России - быстро и недорого. Транспортные перевозки, догруз , сборный груз.
           Узнать стоимость - ${contacts.phone}">
</head>

<body>

<div class="row">

    <p style="display: none" id="page-name">главная</p>



    <div class="col-md-9 center">
        <h1 class="center-block txt-c">Грузоперевозки по всей России</h1>

        <p class="descr">Мы являемся транспортной компанией которая осуществляет <strong>грузоперевозки по России</strong> по всем направлениям.
        Особенностью нашей компании является индивидуальный подход к каждому клиенту.
         Переезд, перевозка продуктов, мебели, багажа стройматериалов и т.д. - все это вы можете осуществить:
        Благодаря огромному разнообразию автомобилей, имеющих разный тоннаж, вместительность, а также габариты, вы без проблем сможете осуществить любой переезд или же перевозку какого-либо крупногабаритного оборудования.
        Мы подберем оптимальный вариант для Вас в зависимости от характеристика груза или товаров, а так же учитывая другие предпочтения.
        Для этого вам нужно просто позвонить или отправить форму на нашем сайте <a href="/menu/request">форму заявки</a>
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
        %{--<g:render template="/shared/freeCityCalc"></g:render>--}%
        <h3 class="txt-c">Какую машину выбрать?</h3>

        <p class="descr">
            На теперешнее время существует множество видов автотранспорта, которые
            используются для различных транспортировок. Среди них особой популярностью
            пользуются: рефрижераторы, полуприцепы, использующиеся для транспортировки
            различных скоропортящихся продуктов; автомобили с прицепом, которые не
            предназначены для перевозки длинномерных грузов; микроавтобусы для
            грузоперевозок любых вещей или товаров, имеющих небольшой вес. Однако самыми
            распространенными тенты и полуприцепы, обладающие грузоподъемностью,
            варьирующейся от 20 до 25 тонн. Они чаще всего используются для перевозки
            большинства видов груза.
            Все наши водители и грузчики имеют очень большой опыт работы в данной сфере.
            Каждый сотрудник хорошо понимает, что на его плечах лежит большая
            ответственность за то, чтобы клиент был полностью удовлетворен работой.
        </p>

        <p class="descr">
            Транспортировка грузов на авто, на сегодняшний день, является самым оптимальным вариантом, который позволяет совмещать в себе ряд немаловажных  факторов</br>
            <b>- высокая скорость грузоперевозок</b>;</br>
            <b>- надежность;</b></br>
            <b>- возможность выбора наиболее подходящего вида транспорта;</b></br>
            <b>- невысокая цена;</b></br>
            <b>- гарантия сохранности грузов при транспортировке.</b></br>
        </p>
        <!-- Услуги и транспорт  -->
        <section class="service_teasers">
            <h2 class="txt-c">Наши услуги и транспорт</h2>

            <div class="service_teaser">
                <div class="row">
                    <div class="service_photo col-xs-4">
                        <img src="/images/gazel1.jpg">
                    </div>

                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Перевозки <strong>газелью</strong>
                            <small>до 2 тонн, объем до 18 куб. длиной до 4 м.</small>
                        </h2>

                        <p class="txt-c price">от 12 до 15 <span>руб./км.</span></p>

                        <p><strong>Газель</strong> является отличным перевозчиком небольших <strong>грузов (до 2 тонн)</strong> и удобным средством городской перевозки.
                        При заказе услуг грузоперевозок, каждый клиент желает подобрать для себя наиболее оптимальный вид вариант транспортировки, который будет выполнен на самом высоком уровне и по приемлемой цене.
                        А поэтому многие клиенты выбираю грузовые перевозки с использованием автомобиля Газель.
                        Представленное авто позволяет перевозить любые грузы массой до 1,5 тонн.
                        Кроме этого Газель характеризуется низким расходом топлива и наличием необходимых автозапчастей, что, в свою очередь, позволяет предоставлять авто по низким ценам.
                        </p>
                        <button class="btn btn-success pull-right car-btn" car="газель">Узнать подробнее</button>
                    </div>

                </div>
            </div>

            <div class="service_teaser">
                <div class="row">
                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Перевозки <strong>«Бычком»</strong> (ЗИЛ) <small>до 5 тонн, объем до 40 куб. длиной до 6 м.</small>
                        </h2>

                        <p class="txt-c price">от 15 до 20 <span>руб./км.</span></p>

                        <p>
                            Современные <strong>ЗИЛ Бычок</strong> относится к наиболее востребованным и популярным видам перевозки. И все это благодаря их компактным размерам и большой мощности, а потому позволяют перевозить грузы массой до 3 тонн.
                        Кузов бычка варьируется от 17 до 27 кубов. Другой характерной особенностью представленного авто является его отличная маневренность. Бычок позволяет свободно проезжать и разворачиваться на городских улочках.
                        Несмотря на то, что стоимость бычка обычно превосходит цену за аренду газели, его способность перевозить большее количество грузов значительно выше.
                        </p>
                        <button class="btn btn-success pull-right car-btn" car="бычок">Узнать подробнее</button>
                    </div>

                    <div class="service_photo col-xs-4">
                        <img src="/images/zil1.jpg">
                    </div>
                </div>
            </div>

            <div class="service_teaser right">
                <div class="row">
                    <div class="service_photo col-xs-4">
                        <img src="/images/kamaz1.jpg">
                    </div>

                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Перевозки <strong>КАМАЗом</strong> <small>до 10 тонн, объем до 60 куб.</small>
                        </h2>

                        <p class="txt-c price">от 20 до 25 <span>руб./км.</span></p>

                        <p>Данные виды авто представляют собой универсальные транспортные средства, активно используемые для различных видов грузов, в том числе и для перевозки отдельной группы товаров.
                        А благодаря различной модификации авто возникает возможность оборудовать выбранный <strong>КАМАЗ</strong> соответствующим образом.
                        Стоит отметить, что для тех, кто выбирает оперативные и качественные перевозки, <strong>КАМАЗ</strong> подходит самым лучшим образом. С его помощью производится транспортировка промышленных грузов, строительных материалов, мебели, аппаратуры и продуктов питания.
                        </p>
                        <button class="btn btn-success pull-right car-btn" car="камаз">Узнать подробнее</button>
                    </div>
                </div>
            </div>

            <div class="service_teaser right">
                <div class="row">
                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Перевозки <strong>фурой</strong>  <small>до 20 тонн, объем до 120 куб. длиной до 15 м.</small>
                        </h2>

                        <p class="txt-c price">от 25 до 30 <span>руб./км.</span></p>

                        <p>
                            Для транспортировки грузов крупных партий, негабаритных размеров, а так же большой массы перевозки с привлечением <strong>фуры</strong> является самым оптимальным
                        Ассортимент перевозимых грузов при помощи представленного авто достаточно широк. Стоит отметить, что фурой наиболее удобно перевозить и скоропортящиеся продукты, а так же грузы, требующие дополнительное охлаждение, либо заморозку.
                        На сегодняшний день для офисных и квартирных переездов заказ фуры набирает все большую популярность. Их вместительные полуприцепы позволяют свободно разместить мебель, технику и прочие бытовые и интерьерные предметы.
                        Особо такое удобство перевозок наблюдается при междугородних переездах. Ко всему прочему они отличаются своей экономичностью в плане расхода топлива.
                        </p>
                        <button class="btn btn-success pull-right car-btn" car="фура">Узнать подробнее</button>
                    </div>

                    <div class="service_photo col-xs-4 col-xs-4">
                        <img src="/images/fura1.jpg">
                    </div>
                </div>
            </div>
        </section>

        <hr/>
        <section class="service_teasers">
            <h2 class="txt-c">Переезды</h2>

            <div class="service_teaser">
                <div class="row">
                    <div class="service_photo col-xs-4">
                        <img src="/images/kvart_pereezd.jpg" alt="переезд квартирный по России " height="300">
                    </div>

                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Квартирные переезды
                        </h2>
                        <g:render template="/shared/pereezdText"></g:render>
                    </div>
                </div>
            </div>

            <div class="service_teaser">
                <div class="row">
                    <div class="service_details col-xs-8">
                        <h2 class="section_header skincolored">Офисные переезды

                        </h2>
                        <g:render template="/shared/pereezdText2"></g:render>
                    </div>

                    <div class="service_photo col-xs-4">
                        <img src="/images/office.jpg" alt="офисные переезды по России">
                    </div>
                </div>
            </div>

        </section>

    </div>

    <div class="col-md-3" style="margin-top:5px; padding-right: 0px">
        <g:render template="/shared/quickForm"></g:render>


        <div class="reis">
            <b>Машин в рейсе:</b>  <span class="label label-info"></span>
        </div>

        <div class="vypol">
            <b>Выполнено заявок за сегодня:</b>  <span class="label label-info"></span>
        </div>

        <g:render template="/shared/transportList"></g:render>
        <g:render template="/shared/custompages"></g:render>


        <!-- VK Widget -->
        <div style="float: right; width: 100% ; margin-top: 30px; margin-right: 10px" id="vk_community_messages"></div>
    </div>
</div>

<div class="row">
    <g:render template="/shared/citiesList" model="[list: cities]"></g:render>
</div>

</body>
</html>