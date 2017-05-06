<div class="panel calculator" id="calculator">
    <h3 class="txt-c" style="height: 20%">Расчет стоимости перевозки</h3>

    <div class="panel-body form-group">
        <div class="form-group field">
            <label>Город отправки:</label>
            <input class="form-control" name="address1" type="text" value="" id="autocomplete1"
                   placeholder="Вводите город или насел.пункт">
        </div>

        <div class="form-group field">
            <label>Город доставки:</label>
            <input class="form-control" name="address2" type="text" value="" id="autocomplete2"
                   placeholder="Вводите город или насел.пункт">
        </div>

        <div class="form-group">
            <label>Требуемый транспорт:</label>
            <input class="form-control" name="ktr" type="text" value="" id="ktr"
                   placeholder="Объем и вес груза">
        </div>
        <label>Узнайте стоимость прямо сейчас:</label>

        <div class="form-inline calc-form">
            <div class="form-group">
                <g:textField class="form-control user-name" name="userName" value="" placeholder="Ваше имя"/>
            </div>

            <div class="form-group">
                <g:textField class="form-control user-phone" name="userPhone" value=""
                             placeholder="Контактный телефон"/>
            </div>
            <button type="button" id="free-calc-btn" class="btn btn-success">Узнать стоимость</button>
        </div>
    </div>
</div>