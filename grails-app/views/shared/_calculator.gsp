<div class="panel panel-primary" style="float: right; width: 100%;">
    <div class="panel-heading">Расчет стоимости для отправки отдельным транспортом</div>
    <div class="panel-body form-group" id="calculator">
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
                <div class="modern" ><!-- / -->
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
                <input disabled style="text-align: right" type="email" class="form-control" id="calc-distance" placeholder="Расстояние">
                <div class="input-group-addon">км</div>
                <input disabled style="text-align: right" type="email" class="form-control" id="calc-price" placeholder="Цена">
                <div class="input-group-addon">руб/км</div>
            </div>
            <div class="input-group">
                <input disabled style="text-align: right" type="email" class="form-control" id="calc-total" placeholder="Стоимость">
                <div class="input-group-addon">рублей</div>
            </div>
            <div id="calc-result" class="alert alert-success form-group" style="padding: 10px; display: none">...</div>
    </div>
</div>