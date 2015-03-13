<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@page defaultCodec="none" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки ${route.name} автомобильным транспортом. Догруз, сборный груз, заказ отдельной машины.</title>
    <meta name="description" content="Грузоперевозки ${route.name} автомобильным транспортом. Доставка грузов по городам и маршрутам России. Квартирный и офисный переезд. Догруз, сборный груз, заказ отдельной машины газель, бычок, фура.">
    <meta name="keywords" content="грузоперевозки ${route.name}, доставка, транспортировка, догруз, сборный груз, отдельная машина, квартирный переезд, офисный переезд, газель, бычок, фура">
</head>

<body>
    <div class="row">
        <div id="collage-row" class="col-xs-12"> <img  src="/images/collage.jpg"></div>
    </div>
    <div class="row">

        <div id="leftList"  class="col-xs-2" style="margin-top:5px; padding-right: 0px">
            <div class="leftList">
                <b>Направления из ${city.gname}</b>
                <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
            </div>
        </div>


        <div class="col-xs-7">
            <div class="row">
                <div class="col-xs-12 collage">
                </div>
            </div>
            <h3 class="txt-c">Грузоперевозки ${route.name} удобно и эффективно</h3>
            <h4 class="txt-c blue">Заказ отдельной машины для перевозок ${route.name}.</h4>

            <div class="row">
                <div class="col-sm-5">  <p style="font-size: 12px ;color : #124072; padding-left: 10px"><b>Сборный груз:</b> <span class="blue">900 руб.,</span> доставка груза в течении 24 часов.<br>
                    <b>Догруз:</b> <span class="blue">от 1500 руб.,</span> доставка на следующий день.</p></div>
                <div class="col-sm-7">
                    <p style="font-size: 12px; padding-left: 10px; color : #124072"><b>Отдельная машина:</b><br>
                        - до 2 тонн, объем до 18 куб. Стоимость: от <span class="blue">12 руб./км</span> до <span class="blue">15 руб./км.</span><br>
                        - до 5 тонн, объем до 40 куб. Стоимость: от <span class="blue">15 руб./км</span> до <span class="blue">20 руб./км.</span><br>
                        - до 10 тонн, объем до 60 куб. Стоимость: от <span class="blue">20 руб./км</span> до <span class="blue">25 руб./км.</span> </br>
                        - до 20 тонн, объем до 60 куб. Стоимость: от <span class="blue">25 руб./км</span> до <span class="blue">30 руб./км.</span></p>
                </div>
            </div>


            %{--<img src="/images/${city.urlName}.jpg" alt="грузоперевозки из ${city.gname}" style="float: left ; margin-right: 10px; max-height: 200px; max-width: 250px">--}%
            <div id="#routeId" hidden="hidden">${route.id}</div>
            <p class="descr">Вы хотите заказать грузоперевозки по маршруту <b>${route.name}? </b> Предлагаем ознакомиться с нашими тарифами и особенностями нашей компании: <br/>
                Любые перевозки из ${route.departureCity.gname}
                в ${route.destinationCity.name}  – это целый комплекс требуемых операций,
                который должны составить основу подготовки к перевозке, правильный выбор
                транспорта и наиболее оптимального маршрута, что проводится профессиональными
                логистами, менеджерами профессиональных компаний на подготовительной стадии
                предваряющих саму поездку. С каждым клиентом оговариваются важные условия, в
                том числе и сроки по доставке, которые определяются реальными условиями
                выбираемой трассы, что позволит выполнить заказ наиболее эффективно,
                качественно и в срок. </br>
                Для нашей большой страны грузовые перевозки, пожалуй, являются насущной и важной задачей. Для функционирования экономики нашей страны важно чтобы производители продукции имели возможность поставлять свою продукцию в другие города и страны, а предприниматели получали надежный способ продавать и покупать товары вне зависимости от места нахождения компании. Компания «Авто-парк» возьмется доставить ваш товар из Екатеринбурга по России и сделает это быстро, слаженно и недорого. Грузоперевозки отдельным грузовым авто являются наиболее оптимальным вариантом, который в себе совмещает быстроту и приемлемую стоимость грузоперевозки.
                Компания «Авто-Парк» обеспечивает эффективные и надежные услуги, в сфере грузоперевозок из Екатеринбурга в любой населенный пункт России. Автомобильные перевозки по России — для вас!
            </p>
            <g:render template="/shared/calculator"></g:render>
            <h4>Перевозки догрузом - выгодное решение для экономии</h4>
            <p class="descr">Профессиональные автотранспортные перевозки – это еще и обязательное
            обеспечение груза всеми необходимыми для транспортировки документами, что
            всегда берет на себя транспортное хозяйство, заботящееся о своих заказчиках. При
            необходимости возможно применение сопровождения или услуга экспедирования. Для
            скоропортящихся видов предлагается рефрижератор, что позволяет сохранять
            качественное состояние таких грузов длительное время.
            Современные технологии позволяют произвести заказ на перевозку догузом из ${route.departureCity.gname}
            в ${route.destinationCity.name} без прямой необходимости посещения офиса компании перевозчика.
            Достаточно посетить сайт выбранной компании перевозчика, чтобы оформить заявку,
            заполнив соответствующий «паспорт груза» на основании которого будет подана
            соответствующая машина, для транспортировки его от клиента, а при необходимости
            ней будут приданы грузчики или кран, в зависимости от объема и его веса. Таким
            образом, сегодня, при работе с профессионалами все сводится лишь к необходимости
            набора нескольких слов без того, чтобы покидать свое рабочее кресло и отвлекаться
            от насущных дел.
            </p>
            <g:render template="/shared/services"></g:render>
            <g:render template="/shared/pereezd"></g:render>
        </div>

        <div class="col-xs-3">
            <g:render template="/shared/quickForm"></g:render>
            <div class="reis">
                <b>Машин в рейсе: </b>  <span class="label label-info"></span>
            </div>
            <div class="vypol">
                <b>Выполнено заявок за сегодня: </b>  <span class="label label-info"></span>
            </div>
            <div style="float: right; width: 100% ; margin-top: 30px; margin-right: 10px" id="vk_groups"></div>
        </div>
    </div>
</body>
</html>