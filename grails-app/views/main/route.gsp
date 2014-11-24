<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 28.09.14
  Time: 0:52
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main-theme"/>
    <title>Грузоперевозки ${route.name} от 50 кг. до 20 тонн. Догруз, сборный груз. Заказ отдельной машины: газель, бычок, камаз, фура.</title>
    <meta name="description" content="Грузоперевозки ${route.name} от 50 кг., до 20 тонн. Доставка грузов по городам и маршрутам России. Квартирный и офисный переезд. Догруз, сборный груз, заказ отдельной машины газель, бычок, фура.">
    <meta name="keywords" content="грузоперевозки ${route.name}, доставка, транспортировка, догруз, сборный груз, отдельная машина, квартирный переезд, офисный переезд, газель, бычок, фура">
</head>

<body>
<div class="jumbotron">

    <div class="row">

        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-5 leftList">
            <h4 class="txt-c">Направления из ${city.gname}</h4>
            <g:render template="/shared/leftList" model="[list: city.routes]"></g:render>
        </div>

        <div class="col-lg-7 col-md-9 col-sm-9 col-xs-7">
            <h3 class="txt-c">Грузоперевозки по маршруту ${route.name}</h3>
            <h4>Доставка грузов по всем городам и регионам России. Отправляем догрузом!</h4>
            <img src="/images/${city.urlName}.jpg" style="float: left ; margin-right: 10px; max-height: 200px; max-width: 250px">
            <p class="descr">Вы ищете надежную компанию, которая осуществляет грузоперевозки в городе ${city.name} ?

            Мы являемся одними из лидеров в данной области не только в ${city.gname}, но и далеко за ее границами.

            Почему с нами работать выгодно? Кроме вышеперечисленных преимуществ, своим клиентам мы также предлагаем:

            Выгодное предложение стоимости – цены на наши услуги соответствуют уровню качества услуг;
            Аккуратность и оперативность – независимо от объема транспортируемого груза, мы гарантируем бережную транспортировку. Груз будет доставлен вовремя, без опозданий и срывов графиков;
            Работу со всеми видами грузоперевозок и разными видами груза: стандартного типа, негабаритными, крупногабаритными, тяжеловесными, опасными;
            Возможность выбрать маршрут грузоперевозок по России и странам СНГ;
            Возможность выбора подходящего вида перевозки по виду транспортного средства, в зависимости от своих потребностей;
            Особый личный подход к перевозке вашего груза.
            Благодаря всему этому компанию «Авто-парк» выбирают за то, что она может удовлетворить все требования и пожелания своих Клиентов, которые хотят быть уверены в надежности доставки груза. Мы гарантируем выполнение всех условий, заранее оговоренных в составленном и подписанном договоре. Можете быть уверены в том, что любые грузоперевозки по России, совершаемые компанией «Авто-парк», будут произведены с максимальной внимательностью и ответственностью.</p>
            <h3>Перевозка догрузом – выгодное решение по минимальной цене</h3>
            <p class="descr">Каждый день по территории Российской Федерации перемещаются сотни грузовых автомобилей с неполной загрузкой. В таком транспорте остается достаточно места для того, чтобы взять дополнительный малогабаритный груз.</p>
            <p class="descr">Менеджеры нашей компании готовы подобрать для вас такой автомобиль с учетом необходимого для вас направления. Важно отметить, что в данном случае вы заплатите намного меньше, чем при заказе отдельного автомобиля.</p>
            <p class="descr">Данный тип перевозок является выгодным решением для тех, кому необходимо срочно доставить некрупный и нетяжелый груз по минимальной цене.</p>
            <p class="descr">Кроме того, с нами вы можете быть уверены, что перевозимая вещь будет доставлена по указанным координатам надежно и быстро.</p>
            <p class="descr">Перевозка догрузом не требует предварительного заказа, поиска конкретной даты, так как грузовой автомобиль в данном случае выходит в день загрузки.</p>
            <p class="descr">Но как рассчитывается стоимость такой перевозки? Цена формируется, исходя из направления. При этом расчет берется только за направление в одну сторону.</p>
            <p class="descr">Опытные логисты нашей компании помогут вам рассчитать стоимость перевозки догрузом. Для этого достаточно только позвонить нам или отправить сообщение на адрес электронной почты. Мы принимаем заявки ежедневно и перезвоним вам сами. Высококвалифицированные менеджеры обрабатывают каждую заявку без задержек, благодаря чему наши клиенты получают ответ незамедлительно.</p>
            <p class="descr">Кроме того, вы всегда можете задать волнующие вас вопросы и получить совершенно бесплатную профессиональную консультацию от наших специалистов.</p>
            <p class="descr">Логисты компании, исходя из таких параметров, как вес, объем, категория груза, смогут без особых проблем подобрать для вас наиболее подходящее транспортное средство. Также менеджеры помогут рассчитать данные параметры и минимизировать расходы, которые пойдут на транспортировку груза.</p>
            <p class="descr">Доставка груза, а также его забор производится строго по тем адресам, которые указал клиент. Кроме того, наша компания предлагает такую услугу, как ответственное хранение товара на складе.</p>
        </div>

        <div class="col-lg-3 col-md-9 col-sm-9 col-xs-12">
            <g:render template="/shared/quickForm"></g:render>
            <g:render template="/shared/calculator"></g:render>
        </div>
    </div>

</div>
</body>
</html>