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


function sendRequest(comment, btnId) {


    var city = $("#city_id").val();
    var route = $("#route_id").val();
    var page = $('#page-name').text();

    $.post("/main/intent", {
        userName: userName,
        phone: userPhone,
        city_id: city,
        route_id: route,
        pageType: page,
        comment: comment
    }, function (data) {
        window.alert("Заявка отправлена! \r\n Спасибо!");
    });

    WBK.sendCrmLead(34563, {'name': userName, 'phone': userPhone, 'comment': comment});
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

    $(".user-phone").attr('placeholder', '+7-(XXX)-XXX-XXXX');

    $('.user-phone').bind("enterKey", function (e) {
        jQuery("#send-btn").click();
    });

    $('.user-phone').keyup(function (e) {
        userPhone = $(this).val()
    });

    $('.user-name').keyup(function (e) {
        userName = $(this).val()
    });

    $('input').keyup(function (e) {
        if (e.keyCode == 13) {
            $(this).trigger("enterKey");
        }
    });

    // 2й тип отправки - кнопка "заказа обратного звонка"
    jQuery("#quick-form-btn").click(function () {

        $('#quick-form-btn').attr('disabled', 'disabled');

        sendRequest("", "#quick-form-btn");
        yaCounter28224696.reachGoal('RECALL_FORM');
    });


    // modal window request
    $('.logist-btn').click(function () {
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


    $(".car-btn").click(function () {
        userName="<кнопка подбора машины>";
        $('.car-btn').attr('disabled', 'disabled');
        sendRequest("", "#quick-form-btn");
        $('.car-btn').removeAttr("disabled");
    });


    $('.zakaz-btn').click(function () {
        $('#modal-form').modal();
        yaCounter28224696.reachGoal('WINDOW_FORM_OPEN');
        carTypeComment = "Машина: " + $(this).attr("car");
    });


    // 1й тип формы - модальное окно вызываемое кнопкой "консульт. логиста"
    $('#modal-form-button').click(function () {
        var userName = $('.modal-body .user-name').val();
        var userPhone = $('.modal-body .user-phone').val();

        sendRequest("", "#modal-form-button");
        yaCounter28224696.reachGoal('WINDOW_FORM_SUBMIT');
    });

    // request from calculator
    // 2й тип формы - калькулятор
    $('#free-calc-btn').click(function () {
        var userName = $('.calc-form .user-name').val();
        var userPhone = $('.calc-form .user-phone').val();
        var msg = 'Заявка с калькулятора';

        if (!checkNamePhone(userName, userPhone, '#calc-btn'))
            return;
        var city1 = $("#autocomplete1").val();
        var city2 = $("#autocomplete2").val();
        var trans = $("#ktr").val();
        var page = $('#page-name').text();

        $.post("/main/intent", {
                userName: userName,
                phone: userPhone,
                departure: city1,
                destination: city2,
                pageType: page,
                volume: trans,
                comment: msg
            },
            function (data) {
                $('#calc-btn').removeAttr('disabled');
                window.alert("Заявка отправлена! \r\n Спасибо!");
            });

        WBK.sendCrmLead(34563, {'name': userName, 'phone': userPhone, 'comment': msg});
        yaCounter28224696.reachGoal('CALC_SUBMIT');
    });

    // флаг для работы с главной формы
    submitted = false;
    $("#full_form").submit(function (event) {
        $("#main_form_btn").attr("disabled", "disabled");
        var comment = $("#comment").val();
        if (!submitted) {
            sendRequest(comment, "#main_form_btn");
        }
        submitted = true;
        event.preventDefault();
        return false;
    });


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



