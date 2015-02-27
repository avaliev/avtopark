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
    <meta name="keywords" content="грузоперевозки по России автомобильным транспортом">
    <meta name="description"
          content="Грузоперевозки по России - быстро и недорого. Грузоперевозки по России отдельным транспортом, догрузом, перевозка сборных грузов.">
    </head>

<body>

    <div class="row">
        <div class="col-xs-2" style="margin-top:5px; padding-right: 0px">
            <img src="/images/zil2.jpg">
            <div class="leftList">
                <h4 class="txt-c">Грузоперевозки по городам</h4>
                <g:render template="/shared/leftList" model="[list: cities]"></g:render>
            </div>

        </div>

        <div class="col-xs-7 center">
            <div class="row">
                <div class="col-xs-12 collage">
                    <img src="/images/collage-row.jpg">
                </div>
            </div>
            <h1 class="center-block txt-c">Грузоперевозки по всей России</h1>

            <p class="descr">Мы являемся транспортной компанией которая осуществляет <strong>грузоперевозки по России</strong> по всем направлениям.
            Особенностью нашей компании является индивидуальный подход к каждому клиенту.
            Благодаря огромному разнообразию автомобилей, имеющих разный тоннаж, вместительность, а также габариты, вы без проблем сможете осуществить любой переезд или же перевозку какого-либо крупногабаритного оборудования.
            Мы подберем оптимальный вариант для Вас в зависимости от характеристика груза или товаров, а так же учитывая другие предпочтения.
            Для этого вам нужно просто позвонить или отправить форму на нашем сайте <a href="/menu/request">форму заявки</a></p>

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

            %{--<h4 class="txt-c red">Грузоперевозки по городам Росии догрузом или отдельным транспортом.</h4>--}
            %{--<p class="descr">Направление деятельности нашей компании – это <strong>грузоперевозки по России</strong>, которые осуществляются с помощью автомобильного транспорта:--}%
            %{--</p>--}%
            %{--<ul>--}%
                %{--<li><strong>Газель</strong> – оптимальное решение для перевозки небольших грузов (оргтехника, продукты питания, строительные материалы и т.д.);--}%
                %{--</li>--}%
                %{--<li><strong/>Фура</strong>   для больших и габаритных грузов (до 20 тонн) - гарантия сохранности ваших грузов;--}%
                %{--</li>--}%
                %{--<li><strong/>Камаз</strong> - надежная и быстрая машина для грузоперевозок до 10 тонн;</li>--}%
                %{--<li><strong/>Бычок</strong> - маневренная и неприхотливая машина для самых разных видов товаров и продукции;</li>--}%
                %{--<li><strong/>Рефрижератор</strong> – предназначен для перевозки скоропортящихся грузов, требующих соблюдения определенной температуры.--}%
                %{--</li>--}%
                %{--<li><strong/>Контейнеровоз </strong> - так же можно заказать по всей России.</li>--}%
            %{--</ul>--}%

            <p class="descr">
            Транспортировка грузов на авто, на сегодняшний день, является самым оптимальным вариантом, который позволяет совмещать в себе ряд немаловажных  факторов</br>
            <b>- высокая скорость грузоперевозок</b>;</br>
            <b>- надежность;  </b></br>
            <b>- возможность выбора наиболее подходящего вида транспорта; </b></br>
            <b>- невысокая цена; </b></br>
            <b>- гарантия сохранности грузов при транспортировке. </b></br>
            </p>
            <g:render template="/shared/calculator"></g:render>
            <!-- Услуги и транспорт  -->
            <section class="service_teasers">
                <h2 class="txt-c">Наши услуги и транспорт</h2>

                <div class="service_teaser">
                    <div class="row">
                        <div class="service_photo col-xs-4">
                            <img src="/images/gazel.jpg">
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
                            <button class="btn btn-primary pull-right car-btn" >Заказать газель</button>
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
                            <button class="btn btn-primary pull-right car-btn" >Заказать ЗИЛ</button>
                        </div>

                        <div class="service_photo col-xs-4">
                            <img src="/images/zil.jpg">
                        </div>
                    </div>
                </div>

                <div class="service_teaser right">
                    <div class="row">
                        <div class="service_photo col-xs-4">
                            <img src="/images/kamaz.jpg">
                        </div>

                        <div class="service_details col-xs-8">
                            <h2 class="section_header skincolored">Перевозки <strong>КАМАЗом</strong> <small>до 10 тонн, объем до 60 куб.</small>
                            </h2>

                            <p class="txt-c price">от 20 до 25 <span>руб./км.</span></p>

                            <p> Данные виды авто представляют собой универсальные транспортные средства, активно используемые для различных видов грузов, в том числе и для перевозки отдельной группы товаров.
                            А благодаря различной модификации авто возникает возможность оборудовать выбранный <strong>КАМАЗ</strong> соответствующим образом.
                            Стоит отметить, что для тех, кто выбирает оперативные и качественные перевозки, <strong>КАМАЗ</strong> подходит самым лучшим образом. С его помощью производится транспортировка промышленных грузов, строительных материалов, мебели, аппаратуры и продуктов питания.
                            </p>
                            <button class="btn btn-primary pull-right car-btn" >Заказать КАМАЗ</button>
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
                            <button class="btn btn-primary pull-right car-btn" >Заказать Фуру</button>
                        </div>

                        <div class="service_photo col-xs-4 col-xs-4">
                            <img src="/images/fura.jpg">
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
                </div>

                <div class="service_teaser">
                    <div class="row">
                        <div class="service_details col-xs-8">
                            <h2 class="section_header skincolored"> Офисные переезды

                            </h2>

                            <p class="descr">
                                Очень часто переезд представляется нам как некий хаос: повсеместно
                                разбросанные мешки с вещами, везде расставленные ящики с документами и
                                папками, разобранная мебель и бегающие туда-сюда работники с перепуганными
                                глазами.</br>
                                Практически на каждого человека предстоящий переезд оказывает негативное
                                влияние, а, зачастую, даже оборачивается депрессией. Да, работа эта отнимает массу
                                сил и времени. Но, одно дело переезжать с квартиры на квартиру, и нечто иное -
                                <b>офисный переезд</b>. </br>
                                При перемене месторасположения офиса основное - это быстро собрать все
                                собрать, перевезти на новое место и в сжатые сроки наладить работу.
                                Да не так легко сделать, как сказать.
                                Готовиться к переезду нужно заблаговременно и всё хорошо спланировать. В
                                идеале устраивать переезд лучше всего в пятницу: так вы убережёте себя от
                                бесконечного потока клиентов. До переезда нужно будет определиться: будете ли вы
                                заказывать услуги компаний, занимающихся организацией переездов.</br>
                                Хорошим помощником при <b>офисном переезде></b>послужит <b>мувинговая компания.</b></br>
                                В услуги таких компаний входит: предоставление рекомендаций по упаковке
                                документов, офисной техники и по обустройству нового офисного помещения, погрузо-
                                разгрузочные работы и непосредственно транспортировка всех вещей с места на
                                место.
                            </p>
                        </div>
                        <div class="service_photo col-xs-4">
                            <img src="/images/office.jpg" alt="офисные переезды по России">
                        </div>
                    </div>
                </div>

            </section>

        </div>

        <div class="col-xs-3">
            <g:render template="/shared/quickForm"></g:render>

            <div class="reis">
               <b>Машин в рейсе: </b>  <span class="label label-info"></span>
           </div>
            <div class="vypol">
                <b>Выполнено заявок за сегодня: </b>  <span class="label label-info"></span>
            </div>
            <!-- VK Widget -->
            %{--<div style="float: right; width: 100%" id="vk_groups"></div>--}%
        </div>
    </div>
</body>
</html>