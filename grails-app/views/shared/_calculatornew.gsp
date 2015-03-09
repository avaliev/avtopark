<div class="panel calculator" id="calculator">
    <h3 class="txt-c" style="height: 20%">Калькулятор</h3>
    <div class="panel-body form-group" >
        <div class="form-group">
            <label>Город отправки:</label>
            <div class="modern"><!-- / -->
                <select class="modern" id="kg1" onchange="checkCalc()">
                    <option value="" selected="">- Выберите из списка -</option>
                    <g:each in="${cities}" var="city">
                        <option value="${city.id}">${city.name}</option>
                    </g:each>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label>Город доставки:</label>
            <div class="modern" ><!-- / -->
                <select class="modern" id="kg2" onchange="checkCalc()">
                    <option value="" selected="">- Выберите из списка -</option>

                    <g:each in="${cities}" var="city">
                        <option value="${city.id}">${city.name}</option>
                    </g:each>

                </select>
            </div>
        </div>

        <div class="form-group">
            <label>Требуемый транспорт:</label>
            <div class="modern"><!-- / -->
                <select class="modern" id="ktr" onchange="onChangeTransport()">
                    <option value="" selected="">- Выберите из списка -</option>
                    <option value="15">до 2 тонн (20 куб)</option>
                    <option value="20">до 5 тонн (50 куб)</option>
                    <option value="25">до 10 тонн (60 куб)</option>
                    <option value="30">до 20 тонн (120 куб)</option>
                </select>
            </div>
        </div>

        <div class="input-group">
            <input disabled style="text-align: right" class="form-control" id="calc-distance">
            <div class="input-group-addon">км</div>
        </div>
        <label>Узнайте стоимость прямо сейчас:</label>
        <div class="form-inline calc-form">
            <div class="form-group">
                <g:textField class="form-control user-name" name="userName" value="" placeholder="Ваше имя" />
            </div>
            <div class="form-group">
                <g:textField class="form-control user-phone" name="userPhone" value="" placeholder="Контактный телефон" />
            </div>
            <button type="button" id="calc-btn" class="btn btn-success">Уточнить стоимость</button>
        </div>
    </div>
</div>