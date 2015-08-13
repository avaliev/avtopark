// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
            $(this).fadeOut();
        });
    })(jQuery);
}

function checkCalc() {

    g2 = document.getElementById("kg2");
    g1 = document.getElementById("kg1");
    tr = document.getElementById("ktr");

    if (g1.selectedIndex > 0 && g2.selectedIndex > 0) {
        // пересчитываем расстояние
        // получаем расстояние
        var city1 = g1.options[g1.selectedIndex].text;
        var city2 = g2.options[g2.selectedIndex].text;

        function callback(response, status) {
            var distance = response.rows[0].elements[0].distance.value;
            calc_km = Math.round(distance / 1000);
            $("#calc-distance").val(calc_km);
            // если транспорт был выбран раннее
            if (tr.selectedIndex > 0) {
                // показать стоимость
                $("#calc-total").val(tr.value * calc_km);
            }
        }

        mapService.getDistanceMatrix(
            {
                origins: [city1],
                destinations: [city2],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: false
            }, callback);
    }
}

function onChangeTransport() {
    tr = document.getElementById("ktr");
    if (tr.selectedIndex > 0) {
        $("#calc-price").val(tr.value);
        if (calc_km) {
            $("#calc-total").val(tr.value * calc_km);
        }
    }
}

function initHandlers() {
    mapService = new google.maps.DistanceMatrixService();

    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    $(".reis span").text(getRandomInt(30, 40));
    $(".vypol span").text(getRandomInt(20, 30));

    $(".user-phone").attr('placeholder', '+7-(XXX)-XXX-XXXX');

    $('.user-phone').bind("enterKey", function (e) {
        jQuery("#send-btn").click();
    });

    $('input').keyup(function (e) {
        if (e.keyCode == 13) {
            $(this).trigger("enterKey");
        }
    });


    jQuery("#send-btn").click(function () {
        $('#send-btn').attr('disabled', 'disabled');
        userName = $("#user_name").val();
        userPhone = $("#user_phone").val();
        comment = $("#comment").val();
        city = $("#city_id").val();
        page = $('#page-name').text();
        //clientType=$("input:radio[name='client_type']:checked").val();

        if (!checkNamePhone(userName, userPhone, '#send-btn'))
            return;

        $.post("/main/intent", {userName: userName, phone: userPhone, city_id: city, comment: comment, pageType: page},
            function (data) {
                window.alert("Заявка отправлена!");
                $('#send-alert-suc').show();
                $('#send-alert-err').hide();
                $('#send-btn').removeAttr('disabled');

            });

        $.post("http://brainbattle.ru/amo/gefest/amosend.php", {
                name: userName,
                phone: userPhone,
                page: page,
                special: "Обратный звонок",
                utm_term: keyword
            },
            function (data) {
                console.log("success response from CRM");
            }
        );
        yaCounter28224696.reachGoal('RECALL_FORM');
    });


    // modal window request
    $('.car-btn').click(function () {
        $('#modal-form').modal();
        $('.modal-title').text($(this).text());
        if (typeof $(this).attr("car") != 'undefined') {
            carTypeComment = "Машина: " + $(this).attr("car");
            spec = "Кнопка заказа автомобиля";
        } else {
            carTypeComment = "Бесплатная консультация логиста";
            spec = "Бесплатная консультация логиста"
        }

        yaCounter28224696.reachGoal('WINDOW_FORM_OPEN');
    });

    $('.zakaz-btn').click(function () {
        $('#modal-form').modal();
        yaCounter28224696.reachGoal('WINDOW_FORM_OPEN');
        carTypeComment = "Машина: " + $(this).attr("car");
    });


    $('#modal-form-button').click(function () {
        var userName = $('.modal-body .user-name').val();
        var userPhone = $('.modal-body .user-phone').val();
        var city = $("#city_id").val();
        var route = $("#route_id").val();
        var page = $('#page-name').text();

        if (!checkNamePhone(userName, userPhone, "#modal-form-button")) {
            return;
        }


        $.post("/main/intent", {
            userName: userName,
            phone: userPhone,
            city_id: city,
            route_id: route,
            comment: carTypeComment,
            pageType: page
        }, function (data) {
            window.alert("Заявка отправлена! \r\n Спасибо!");
        });
        $.post("http://brainbattle.ru/amo/gefest/amosend.php", {
                name: userName,
                phone: userPhone,
                page: page,
                special: spec,
                volume: carTypeComment,
                utm_term: keyword
            },
            function (data) {
                console.log("success response from CRM");
            }
        );
        yaCounter28224696.reachGoal('WINDOW_FORM_SUBMIT');
    });

    // request from calculator
    $('#calc-btn').click(function () {
        var userName = $('.calc-form .user-name').val();
        var userPhone = $('.calc-form .user-phone').val();
        var msg = 'Заявка с калькулятора';

        if (!checkNamePhone(userName, userPhone, '#calc-btn'))
            return;

        if (typeof g1 != 'undefined') {
            var city1 = g1.options[g1.selectedIndex].text;
            msg = msg + ' Город отправки:' + city1;
            if (typeof g2 != 'undefined') {
                var city2 = g2.options[g2.selectedIndex].text;
                msg = msg + ' Город доставки:' + city2;
            }
        } else {
            var city = $("#city_id").val();
            var route = $("#route_id").val();
        }

        if (typeof tr != 'undefined') {
            var tran = tr.options[tr.selectedIndex].text;
            msg = msg + '; Транспорт: ' + tran;
        }
        var page = $('#page-name').text();

        $.post("/main/intent", {
                userName: userName,
                phone: userPhone,
                city_id: city,
                route_id: route,
                pageType: page,
                comment: msg
            },
            function (data) {
                $('#calc-btn').removeAttr('disabled');
                window.alert("Заявка отправлена! \r\n Спасибо!");
            });
        $.post("http://brainbattle.ru/amo/gefest/amosend.php", {
                name: userName,
                phone: userPhone,
                loading: city1,
                unloading: city2,
                volume: tran,
                page: page,
                special: "Заявка с калькулятора",
                utm_term: keyword
            },
            function (data) {
                console.log("success response from CRM");
            }
        );
        yaCounter28224696.reachGoal('CALC_SUBMIT');
    });

    // флаг для работы с главной формы
    submitted=false;

    $("#full_form").submit(function(event){

        $("#main_form_btn").attr("disabled","disabled");

        var userName = $("#user_name").val();
        var userPhone = $("#user_phone").val();
        var email = $("#email").val();
        var destination = $("#destination").val();
        var departure = $("#departure").val();
        var weight = $("weight").val();
        var volume = $("#volume").val();
        var comment = $("#comment").val();


        if (!checkNamePhone(userName, userPhone, "#main_form_btn")) {
            return false;
        }
        if (submitted) {
            return true;
        } else {
            event.preventDefault();
        }

        $.ajax({
            method: POST,
            url: "http://brainbattle.ru/amo/gefest/amosend.php",
            data: {
                name: userName,
                phone: userPhone,
                email: email,
                page: "Форма заявки",
                special: comment,
                loading: departure,
                unloading: destination,
                weight: weight,
                volume: volume
            }

        }).always(function(a,text,b){
            console.log("callback for request from CRM");
            console.log(text);
            submitted=true;
            $("#full_form").submit();
        });

        return false;
    });


    function checkNamePhone(userName, userPhone, btnId) {
        // проверяет имя и телефон, соответ формы и работает с кнопкой

        $(btnId).attr('disabled', 'disabled');
        if (userName == null || userName == '') {
            window.alert("Вы не указали Ваше имя !");
            $(btnId).removeAttr('disabled');
            return false;
        }
        if (userPhone == null || userPhone == '') {
            window.alert("Вы не указали телефон !");
            $(btnId).removeAttr('disabled');
            return false;
        }
        $(btnId).removeAttr('disabled');
        return true;
    }

    function setYaKeyWord() {
        var url = window.location.search;
        var ind = url.lastIndexOf("utm_term=");
        keyword = "";
        if (ind > 0) {
            var keywordStart = ind + "utm_term=".length;
            var ind2 = url.indexOf("&", keywordStart);
            if (ind2 > 0) {
                keyword = url.substr(keywordStart, ind2 - keywordStart);
            }
            else {
                keyword = url.substr(keywordStart);
            }
        }
    }

    setYaKeyWord();

}



