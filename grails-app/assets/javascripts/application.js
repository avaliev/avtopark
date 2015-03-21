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
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

function checkCalc(){

    g2 = document.getElementById("kg2");
    g1 = document.getElementById("kg1");
    tr = document.getElementById("ktr");

    if (g1.selectedIndex>0 && g2.selectedIndex>0 ) {
        // пересчитываем расстояние
        // получаем расстояние
        var city1=g1.options[g1.selectedIndex].text;
        var city2=g2.options[g2.selectedIndex].text;

        function callback(response, status){
            var distance=response.rows[0].elements[0].distance.value;
            calc_km=Math.round(distance/1000);
            $("#calc-distance").val(calc_km);
            // если транспорт был выбран раннее
            if (tr.selectedIndex>0) {
                // показать стоимость
                $("#calc-total").val(tr.value*calc_km);
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

function onChangeTransport(){
    tr = document.getElementById("ktr");
    if (tr.selectedIndex>0) {
        $("#calc-price").val(tr.value);
        if (calc_km) {
            $("#calc-total").val(tr.value*calc_km);
        }
    }
}

function initHandlers() {
    mapService = new google.maps.DistanceMatrixService();

    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    $(".reis span").text(getRandomInt(30,40));
    $(".vypol span").text(getRandomInt(20,30));

    jQuery(function($){
        $(".user-phone").mask("+7 (999) 999-9999");
    });

    jQuery("#send-btn").click(function(){

        $('#send-btn').attr('disabled','disabled');
        userName=$("#user_name").val();
        userPhone=$("#user_phone").val();
        comment=$("#comment").val();
        city=$("#city_id").val();
        page=$('#page-name').text();
        //clientType=$("input:radio[name='client_type']:checked").val();
        if (userName==null || userName=='' ) {
            window.alert("Вы не указали Ваше имя !");
            $('#send-btn').removeAttr('disabled');
            return;
        }
        if (userPhone==null || userPhone=='' ){
            window.alert("Вы не указали телефон !")
            $('#send-btn').removeAttr('disabled');
            window.alert("Вы не указали телефон !");
            return;
        }

        //if ( userName==null || userName=='' || userPhone==null || userPhone=='' )  {
        //    // show error
        //    $('#send-alert-err').show();
        //    $('#send-alert-suc').hide();
        //} else {
            // submit ajax

            $.post("/main/intent",{userName:userName,phone:userPhone,city_id:city,comment:comment,pageType:page},
                function(data){
                    window.alert("Заявка отправлена!")
                $('#send-alert-suc').show();
                $('#send-alert-err').hide();
                    $('#send-btn').removeAttr('disabled');

            });
        yaCounter28224696.reachGoal('RECALL_FORM');
    });


    $('.car-btn').click(function(){
        $('#modal-form').modal();
        $('.modal-title').text($(this).text());
        carTypeComment=$(this).text();
        yaCounter28224696.reachGoal('WINDOW_FORM_OPEN');
    });

    $('.zakaz-btn').click(function(){
        $('#modal-form').modal();
        yaCounter28224696.reachGoal('WINDOW_FORM_OPEN');
        carTypeComment="Машина:" + $(this).attr("car");
    });

    $('#modal-form-button').click(function(){
        var userName=$('.modal-body .user-name').val();
        var userPhone=$('.modal-body .user-phone').val();
        var city=$("#city_id").val();
        var route=$("#route_id").val();
        var page=$('#page-name').text();
        $.post("/main/intent",{userName:userName,phone:userPhone,city_id:city, route_id: route, comment:carTypeComment,pageType:page});
        yaCounter28224696.reachGoal('WINDOW_FORM_SUBMIT');
    });

    $('#calc-btn').click(function(){
        var userName=$('.calc-form .user-name').val();
        var userPhone=$('.calc-form .user-phone').val();
        var msg='Заявка с калькулятора';
        $('#calc-btn').attr('disabled','disabled');
        if (userName==null || userName=='') {
            window.alert("Вы не указали Ваше имя !");
            $('#calc-btn').removeAttr('disabled');
            return;
        }
        if (userPhone==null || userPhone=='' ){
            window.alert("Вы не указали телефон !")
            $('#calc-btn').removeAttr('disabled');
            window.alert("Вы не указали телефон !");
            return;
        }
        if (typeof g1!='undefined') {
            var city1=g1.options[g1.selectedIndex].text;
            msg=msg+' Город отправки:'+city1;
            if (typeof g2!='undefined') {
                var city2=g2.options[g2.selectedIndex].text;
                msg=msg+' Город доставки:'+city2;
            }
        } else {
            var city=$("#city_id").val();
            var route=$("#route_id").val();
        }

        if (typeof tr!='undefined'){
            var tran=tr.options[tr.selectedIndex].text;
            msg=msg+'; Транспорт: ' + tran;
        }
        var page=$('#page-name').text();

        $(this).attr('disabled','disabled');
        $.post("/main/intent",{userName:userName,phone:userPhone,city_id:city, route_id: route, pageType:page, comment:msg},
            function(data){
                $('#calc-btn').removeAttr('disabled');
                window.alert("Заявка отправлена! \r\n Спасибо!");
            });
        yaCounter28224696.reachGoal('CALC_SUBMIT');
    });
}



