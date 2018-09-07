<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page defaultCodec="none" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки из ${city.gname} по России. Быстро  и недорого. Все виды транспорта.</title>
    <meta name="description" content="
          Догруз, сборный груз, офисные и квартирные переезды.
          Автопарк газелей, камазов, фур. Узнать стоимость перевозки ${contacts.phone}">
</head>

<body>
<p style="display: none" id="page-name">${city.name}</p>


<div class="row">
    <div class=" col-md-9">

        <h1 class="txt-c font150">Грузоперевозки из ${city.gname} по России быстро и недорого</h1>
        <h4 class="txt-c blue font150">Автомобильные перевозки и доставка из ${city.gname} по городам Росии догрузом или отдельным транспортом</h4>

        <img src="http://maps.googleapis.com/maps/api/staticmap?center=${city.name}&zoom=10&size=250x200&key=AIzaSyCweSmzfOW9bOdnpHaxlpqamwQ62pFvQCA"
             alt="перевозки ${city.name} газель, бычок"
             style="float: right ; margin-left: 10px; max-height: 250px; max-width: 250px">

        <p class="descr">
            ${city.descr}
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

        <h3>Перевозки отдельным транспортом</h3>

        <p class="descr">Применение автомобильного грузового транспорта для транспортировки грузов
        различного вида и веса, формы и параметров сегодня стало самым эффективным
        способом не только в черте городов, населенных пунктов, но и в дальних перевозках,
        даже в самые отдаленные уголки страны и за рубеж. Удобство автотранспорта просто
        неоспоримо. Возможность забирать ваши вещи и багаж прямо «от порога» и доставлять его
        непосредственно по указанному адресу, без необходимости промежуточных
        погрузок/разгрузок, что очень важно для сохраняемости самого груза – это очень
        важный фактор. Кроме того, возможность проезда там, где кроме «направлений» даже
        может не быть и предусмотренных для передвижения других условий, оперативность
        и разнообразие видов транспорта – газель, бычок, КАМАЗ, фура любой модели,
        применение которых обусловлено габаритами и весом груза, обеспечивают именно
        этот вид доставки из города в город самым широким спросом у потребителя.</p>

        <h3>Доставка догрузом и сборным грузом</h3>

        <p class="descr">Учитывая различные особенности отправляемых грузов – хрупкость, высокую
        ценность или требования к определенным температурам на момент
        транспортирования диктует обязательные требования к автоперевозчику в отношении
        его автопарка. Разнообразие транспортных средств, а также вариантов крепления и
        обеспечения безопасности – отличает профессионального перевозчика от компаний
        однодневок. Только профессионалы сразу определяют наилучший способ
        транспортировки по указанным заказчиком основным параметрам. Кроме того для
        клиентов всегда имеются предложения, позволяющие обеспечить перевозку их вещей
        из города в город на выгодных для них условиях. Естественно всегда дешевле иметь
        возможность «подгрузить» свое отправление в уже сформированный рейс,
        позволяющий по возможностям транспорта принять на борт еще и дополнительный
        груз. Этот метод часто предлагают профессиональные перевозчики для тех, кто не
        имеет возможности нанять отдельную машину, а вес и габариты могут стать поводом
        для отправки в составе уже загруженных машин.</p>

        <h3>Что нужно знать при перевозке</h3>

        <p class="descr">
            Мы понимаем, что выполнение каждой транспортировки требует индивидуального подхода.
            Так для качественного выполнения услуги и подбора подходящего вида авто необходимо учитывать ряд важных факторов, таких как:
        <ul>
            <li>особенности транспортировки различных объектов,</li>
            <li>предоставляемый маршрут,</li>
            <li>климатические условия региона, по которому производится транспортировка.</li>
        </ul>
        А потому для качественной и быстрой транспортировки товаров или личных вещей компания готова предложить комплексный подход к предоставляемой услуге:
        предоставление транспорта, аренда специализированной техники, экспедиционную группу,
        страхование Ваших вещей на всех этапах перевозки, помощь в оформлении всех видов документации.
    </p>

        <hr/>
        <g:render template="/shared/services" model="[c: city]"></g:render>

    </div>

    <div class=" col-md-3">
        <g:render template="/shared/quickForm"></g:render>
        <div class="reis">
            <b>Машин в рейсе:</b>  <span class="label label-info"></span>
        </div>

        <div class="vypol">
            <b>Выполнено заявок за сегодня:</b>  <span class="label label-info"></span>
        </div>

        <g:render template="/shared/custompages"></g:render>

    </div>
</div>

<div class="row">
    <g:render template="/shared/routesList" model="[list: city.routes]"></g:render>
</div>
</body>
</html>