// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap
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
                $("#calc-total").text(tr.value*calc_km);
            }

        }

        var service = new google.maps.DistanceMatrixService();
        service.getDistanceMatrix(
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

    jQuery("#send-btn").click(function(){
        userName=$("#user_name").val();
        userPhone=$("#user_phone").val();
        comment=$("#comment").val();
        city=$("#city_id").val();

        if ( userName==null || userName=='' || userPhone==null || userPhone=='' )  {
            // show error
            $('#send-alert-err').show();
            $('#send-alert-suc').hide();
        } else {
            // submit ajax
            $.post("main/intent",{userName:userName,phone:userPhone,city_id:city,comment:comment},
                function(data){
                $('#send-alert-suc').show();
                $('#send-alert-err').hide();
            });
        }
    });

    jQuery("#calc-btn").click(function(){
        var service = new google.maps.DistanceMatrixService();
        var g1=$("#kg1");
        var trval=$("#ktr").val();


        var g1 = document.getElementById("kg1");
        var g2 = document.getElementById("kg2");
        tr = document.getElementById("ktr");
        if (g1.selectedIndex>0 && g2.selectedIndex>0 && tr.selectedIndex>0  ) {
            function callback(response, status){
                var distance=response.rows[0].elements[0].distance.value;
                var km=Math.round(distance/1000);
                var price=tr.value;
                $("#calc-result").text(" <b>Расстояние:</b> " + km +"x"+ price +"руб/км" + "=" + km*price);
                $("#calc-result").show();
            }


            service.getDistanceMatrix(
                {
                    origins: ['Москва'],
                    destinations: ['Казань'],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC,
                    avoidHighways: false,
                    avoidTolls: false
                }, callback);
        }
        else {
            window.alert('Выберите маршрут и транспортное средство!')
        }


    })



}


