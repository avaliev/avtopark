<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@page defaultCodec="none" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city.gname} по России. Быстро  и недорого. Все виды транспорта.</title>
    <meta name="description"
          content="Грузоперевозки из ${city.gname} по городам России. Догруз, сборный груз, офисные и квартирные переезды. Автопарк газелей, камазов, фур. Узнать стоимость перевозки 8-800-700-6798">
    <meta name="keywords"
          content="грузоперевозки из ${city.gname}, перевозки, доставка грузов, догруз, сборный груз, стоимость перевозки">
</head>

<body>
    <div class="row">

        %{--<div class=" col-xs-2  leftList">--}%
            %{--<h4 class="txt-c">Направления из ${city.gname}</h4>--}%
            %{--<g:render template="/shared/leftList" model="[list: city.routes]"></g:render>--}%
        %{--</div>--}%

        <div class="col-xs-2" style="margin-top:5px; padding-right: 0px">
            <img src="/images/zil2.jpg">
            <div class="leftList">
                <h4 class="txt-c">Грузоперевозки по городам</h4>
                <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
            </div>
        </div>


        <div class=" col-xs-7">
            <div class="row">
                <div class="col-xs-12 collage">
                    <img src="/images/collage-row.jpg">
                </div>
            </div>
            <h3 class="txt-c">Грузоперевозки из ${city.gname} по России</h3>
            <h4 class="txt-c blue">Перевозки из ${city.gname} по городам Росии догрузом или отдельным транспортом</h4>

            %{--<div class="row">--}%
                %{--<div class=" 5">  <p style="font-size: 12px ;color : #124072; padding-left: 10px"><b>Сборный груз:</b> <span class="red">900 руб.,</span> доставка груза в течении 24 часов.<br>--}%
                    %{--<b>Догруз:</b> <span class="red">от 1500 руб.,</span> доставка на следующий день.</p></div>--}%
                %{--<div class=" 7">--}%
                    %{--<p style="font-size: 12px; padding-left: 10px; color : #124072"><b>Отдельная машина:</b><br>--}%
                        %{--- до 2 тонн, объем до 18 куб. Стоимость: от <span class="red">12 руб./км</span> до <span class="red">15 руб./км.</span><br>--}%
                        %{--- до 5 тонн, объем до 40 куб. Стоимость: от <span class="red">15 руб./км</span> до <span class="red">20 руб./км.</span><br>--}%
                        %{--- до 10 тонн, объем до 60 куб. Стоимость: от <span class="red">20 руб./км</span> до <span class="red">25 руб./км.</span> </br>--}%
                        %{--- до 20 тонн, объем до 60 куб. Стоимость: от <span class="red">25 руб./км</span> до <span class="red">30 руб./км.</span></p>--}%
                %{--</div>--}%
            %{--</div>--}%
            <img src="/images/${city.urlName}.jpg" alt="грузоперевозки по России из ${city.gname}"
                 style="float: left ; margin-right: 10px; max-height: 200px; max-width: 250px">

            <img src="http://maps.googleapis.com/maps/api/staticmap?center=${city.name}&zoom=10&size=250x200&key=AIzaSyCweSmzfOW9bOdnpHaxlpqamwQ62pFvQCA" alt="перевозки ${city.name} газель, бычок" style="float: right ; margin-left: 10px; max-height: 250px; max-width: 250px">

            <p class="descr">${city.descr}</p>

            <p class="descr">${city.descr1}</p>

            <g:if test="${seo_content!=null}" >
                <div id="seo-content">
                    %{--разметка и текст для целевой страницы--}%
                    ${seo_content}
                </div>
            </g:if>

            <p class="descr">Для нашей большой страны грузовые перевозки, пожалуй, являются насущной и важной задачей. Для функционирования экономики нашей страны важно чтобы производители продукции имели возможность поставлять свою продукцию в другие города и страны, а предприниматели получали надежный способ продавать и покупать товары вне зависимости от места нахождения компании.
            Компания «Авто-парк» возьмется доставить ваш товар из ${city.gname} по России и сделает это быстро, слаженно и недорого.
            Грузоперевозки отдельным грузовым авто являются наиболее оптимальным вариантом, который в себе совмещает быстроту и приемлемую стоимость грузоперевозки.
            Компания «Авто-Парк» обеспечивает эффективные и надежные услуги, в сфере грузоперевозок из <strong>${city.gname}</strong> в любой населенный пункт России.  Автомобильные перевозки по России — для вас!</p>

            <g:render template="/shared/calculator" model="${city}"></g:render>

            <h4>Грузоперевозки отдельным транспортом</h4>

            <p class="descr">Часто автомобильные перевозки отдельным транспортом используют для грузов, которые требуют быстрой доставки.
            Это актуально для перевозки скоропортящихся грузов. В этом случае автомобильные перевозки являются лучшим способом доставки, так как они характеризуются высокой скоростью и маневренностью.
            Компания «Авто-Парк» организовывает прямые грузоперевозки любых грузов отдельным транспортом из ${city.gname} в любой город России.
            На теперешнее время существует множество видов автотранспорта, которые используются для различных транспортировок.
            Среди них особой популярностью пользуются: рефрижераторы, полуприцепы, использующиеся для транспортировки различных скоропортящихся продуктов; автомобили с прицепом, которые не предназначены для перевозки длинномерных грузов; микроавтобусы для грузоперевозок любых вещей или товаров, имеющих небольшой вес.
            Однако самыми распространенными тенты и полуприцепы, обладающие грузоподъемностью, варьирующейся от 10 до 25 тонн. Они чаще всего используются для перевозки большинства видов груза</p>

            <h4>Грузоперевозки догрузом и сборным грузом</h4>
            <p class="descr">Компания «Авто-Парк» предлагает услуги сборного груза методом догруза.
            В данном случае предполагается самостоятельный забор груза его перевозчиком от грузоотправителя и доставка непосредственно по адресу грузополучателя.
            Этот способ перевозки способствует снижению стоимости заказа на перевозку груза для заказчика.
            Кроме этого он экономит время на организацию доставки и на саму транспортировку в конечный пункт назначения.
            Наша компания отправляет товар своих клиентов в любую точку России, в независимости от того городом или другим населенным пунктом является конечный пункт назначения перевозки.</p>

            <hr/>
            <g:render template="/shared/services"></g:render>
            <hr/>
            <g:render template="/shared/pereezd"></g:render>

        </div>

        <div class=" col-xs-3">
            <g:render template="/shared/quickForm"></g:render>
            %{--<div style="float: right; width: 100%" id="vk_groups"></div>--}%
        </div>
</div>
</body>
</html>