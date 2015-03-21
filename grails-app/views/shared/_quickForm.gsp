<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 10.10.14
  Time: 16:52
--%>
    <div id="quick-form" class="panel panel-primary" style="float: right; width: 100% ;">
        <div class="panel-heading" style="font-size: 16px"> <b>Заказать обратный звонок</b> </br> (консультант свяжется с Вами в ближайшее время)</div>
        <div class="panel-body form-group" style="color:#000000">
            <g:form id="quick_form" controller="main" action="intent" method="POST" class="form-group" role="form" >
                <div class="form-group">
                    <label for="user_name">Пожалуйста, представьтесь:</label>
                    <g:textField id="user_name" class="form-control" name="userName" value="" placeholder="Ваше имя" />
                </div>
                %{--<div class="form-group" >--}%
                    %{--<label class="radio-inline">--}%
                        %{--<input id="client_type" type="radio" name="client_type" value="ooo"> <b> Юр. лицо </b>--}%
                    %{--</label>--}%
                    %{--<label class="radio-inline">--}%
                        %{--<input type="radio" name="client_type" value="fiz"> <b>Физ. лицо </b>--}%
                    %{--</label>--}%
                %{--</div>--}%
                <div class="form-group">
                    <label for="user_phone">Ваш контактный телефон:</label>
                    <g:textField id="user_phone" class="form-control user-phone" type="tel" name="phone" value="" placeholder="Ваш номер телефона"/>
                </div>
                %{--<div class="form-group">--}%
                    %{--<label for="comment">Комментарий:</label>--}%
                    %{--<g:textField id="comment" class="form-control" name="comment" value="" placeholder="Ваше примечание" />--}%
                %{--</div>--}%
                <div class="form-group">
                    <button style="width: 100%" type="button" class="btn btn-danger" id="send-btn">Заказать консультацию &#8594;</button>
                </div>

                <div id="send-alert-suc" class="alert alert-success form-group" style="display: none">ОК, заявка отправлена!</div>
                <div id="send-alert-err" class="alert alert-warning form-group" style="display: none">
                    А Вы заполнили необходимые поля о себе?</div>
            </g:form>
        </div>
    </div>
