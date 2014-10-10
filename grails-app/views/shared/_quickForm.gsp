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
                    <label for="user_phone">Ваш контактный телефон:</label>
                    <g:textField id="user_phone" class="form-control" type="tel" name="phone" value="" placeholder="+79XXXXXXXXX" />
                </div>
                <button type="submit" class="btn btn-success">Отправить</button>
            </g:form>

            <div id="alert-div" hidden="hidden" class="alert alert-success">...</div>
        </div>
    </div>
