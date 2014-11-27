<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city.gname} по России. Газель, бычок, фура от 50 кг. до 20т. Догруз и сборный груз.</title>
    <meta name="description"
          content="Грузоперевозки из ${city.gname} по городам России. Догруз, сборный груз, офисные и квартирные переезды. Автопарк газелей, камазов, фур. Узнать стоимость перевозки 8-800-700-6798">
    <meta name="keywords"
          content="грузоперевозки из ${city.gname}, перевозки, доставка грузов, догруз, сборный груз, стоимость перевозки">
</head>

<body>
<div class="jumbotron">

    <div class="row">

        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-5 leftList">
            <h4 class="txt-c">Направления из ${city.gname}</h4>
            <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
        </div>


        <div class="col-lg-7 col-md-9 col-sm-9 col-xs-7">
            <h3 class="txt-c">Грузоперевозки из ${city.gname} по России</h3>
            <img src="/images/${city.urlName}.jpg" alt="грузоперевозки из ${city.gname}"
                 style="float: left ; margin-right: 10px; max-height: 200px; max-width: 250px">

            <img src="http://maps.googleapis.com/maps/api/staticmap?center=${city.name}&zoom=10&size=250x200&key=AIzaSyCweSmzfOW9bOdnpHaxlpqamwQ62pFvQCA" alt="перевозки ${city.name}" style="float: right ; margin-left: 10px; max-height: 250px; max-width: 250px">

            <p class="descr">${city.descr}</p>

            <p class="descr">${city.descr1}</p>



            <p class="descr">Грузовые перевозки объединяют мир: производители продукции имеют возможность поставлять ее в другие города и страны, предприниматели получают отличный способ продавать и покупать товары вне зависимости от места нахождения компании. Компания «Авто-парк» возьмется доставить ваш товар из ${city.gname} по России и сделает это быстро, слаженно и недорого. Автомобильные перевозки по России — для вас!</p>
            <h4>Грузоперевозки отдельным транспортом</h4>

            <p class="descr">Компания «Авто-Парк» организовывает прямые грузоперевозки любых грузов отдельным транспортом из Курска в любой город России. Наши специалисты возьмут на себя всю комплексную заботу о перевозке вашего груза выделенным транспортом. Перевозка отдельной машиной выполняется без остановок в пунктах и перегрузов, что способствует сокращению логистических расходов и сроков грузоперевозки.</p>
            <h4>Грузоперевозки догрузом и сборным грузом</h4>

            <p class="descr">Компания «Авто-Парк» предлагает услуги сборного груза методом догруза. В данном случае предполагается самостоятельный забор груза его перевозчиком от грузоотправителя и доставка непосредственно по адресу грузополучателя. Этот способ перевозки способствует снижению стоимости заказа на перевозку груза для заказчика. Кроме этого он экономит время на организацию доставки и на саму транспортировку в конечный пункт назначения. Наша компания отправляет товар своих клиентов в любую точку России, в независимости от того городом или другим населенным пунктом является конечный пункт назначения перевозки.</p>

            <h3 class="txt-c">Наши услуги </h3>
            <g:render template="/shared/services"></g:render>

            <g:render template="/shared/calculator"></g:render>
        </div>

        <div class="col-lg-3 col-md-9 col-sm-9 col-xs-12">
            <g:render template="/shared/quickForm"></g:render>
            <div style="float: right; width: 100%" id="vk_groups"></div>
        </div>

    </div>
</div>
</body>
</html>