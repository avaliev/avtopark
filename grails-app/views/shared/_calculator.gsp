<div class="panel panel-primary" style="float: right">
    <div class="panel-heading">Калькулятор</div>
    <div class="panel-body form-group">
        <g:form id="quick_form" controller="main" action="intent" method="POST" class="form-group" role="form" >

            <div class="form-group">
                <button type="button" class="btn btn-success" id="calc-btn">Отправить</button>
            </div>
            <g:if test="${city!=null}">
                <g:textField id="city_id" style="display:none" name="city_id" value="${city.id}"  />
            </g:if>

        </g:form>
    </div>
</div>