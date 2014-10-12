<%--
  Created by IntelliJ IDEA.
  User: Valiev
  Date: 10.10.14
  Time: 16:52
--%>
    <div class="panel panel-primary">
        <div class="panel-heading">Оставить заявку на расчет стоимости (заказать звонок)</div>
        <div class="panel-body form-group">
            <g:form controller="main" action="intent" method="POST" class="form-group" >
                <div class="form-group">
                    <label for="user_name">Пожалуйста, представьтесь:</label>
                    <g:textField id="user_name" class="form-control" name="userName" value="" placeholder="Ваше имя" />
                </div>
                <div class="form-group">
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
                <button type="button" class="btn btn-success" id="send-btn">Отправить</button>
            </g:form>
            <div id="alert-div" hidden="hidden" class="alert alert-success">...</div>
        </div>
    </div>
