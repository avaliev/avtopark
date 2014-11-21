<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 10.10.14
  Time: 16:52
--%>
    <div class="panel panel-primary" style="float: right; width: 100%">
        <div class="panel-heading">Оставить заявку на расчет стоимости (заказать звонок)</div>
        <div class="panel-body form-group">
            <g:form id="quick_form" controller="main" action="intent" method="POST" class="form-group" role="form" >
                <div class="form-group">
                    <label for="user_name">Пожалуйста, представьтесь:</label>
                    <g:textField id="user_name" class="form-control" name="userName" value="" placeholder="Ваше имя" />
                </div>
                <div class="form-group"  style="display:none" >
                    <label class="radio-inline">
                        <input type="radio" name="client_type" value="ooo" checked="true"> <b> Юр. лицо </b>
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="client_type" value="fiz"> <b>Физ. лицо </b>
                    </label>
                </div>
                <div class="form-group">
                    <label for="user_phone">Ваш контактный телефон:</label>
                    <g:textField id="user_phone" class="form-control" name="phone" value="" placeholder="+79XXXXXXXXX" />
                </div>
                <div class="form-group">
                    <label for="comment">Комментарий:</label>
                    <g:textField id="comment" class="form-control" name="comment" value="" placeholder="Ваше примечание" />
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-success" id="send-btn">Отправить</button>
                </div>
                <g:if test="${city!=null}">
                    <g:textField id="city_id" style="display:none" name="city_id" value="${city.id}"  />
                </g:if>
                <div id="send-alert-suc" class="alert alert-success form-group" style="display: none">ОК, заявка отправлена!</div>
                <div id="send-alert-err" class="alert alert-warning form-group" style="display: none">
                    А Вы заполнили необходимые поля о себе?</div>
            </g:form>
        </div>
    </div>
