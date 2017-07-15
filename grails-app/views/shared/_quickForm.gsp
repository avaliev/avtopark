<div id="quick-form" class="panel panel-primary" style="float: right; width: 100% ;">
    <div class="panel-heading"
         style="font-size: 16px"><b>Заказать обратный звонок</b> </br> (консультант свяжется с Вами в ближайшее время)
    </div>

    <div class="panel-body form-group" style="color:#000000">
        <g:form id="quick_form" controller="main" action="intent" method="POST" class="form-group" role="form">
            <div class="form-group">
                <label for="user_name">Пожалуйста, представьтесь:</label>
                <g:textField id="user_name" class="form-control" name="userName" value="" placeholder="Ваше имя"/>
            </div>

            <div class="form-group">
                <label for="user_phone">Ваш контактный телефон:</label>
                <g:textField id="user_phone" class="form-control user-phone" type="tel" name="phone" value=""
                             placeholder="Ваш номер телефона"/>
            </div>

            <p style="font-size: 12px; color: black" for="agreement">
                <input type="checkbox" checked id="agreement">
                Согласен на отправку и обработку моих данных</p>

            <p style="font-size: 11px; color: black">Ваши данные не будут
            использоваться для рассылки и не передаются третьим лицам</p>

            <div class="form-group">
                <button style="width: 100%" type="button" class="btn btn-success"
                        id="send-btn">Заказать консультацию &#8594;</button>
            </div>

            <div id="send-alert-suc" class="alert alert-success form-group"
                 style="display: none">ОК, заявка отправлена!</div>

            <div id="send-alert-err" class="alert alert-warning form-group" style="display: none">
                А Вы заполнили необходимые поля о себе?</div>
        </g:form>
    </div>
</div>
