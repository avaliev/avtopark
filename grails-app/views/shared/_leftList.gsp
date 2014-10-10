<div class="col-sm-3 leftList">
    <h3>Города</h3>
    <ul class="nav nav-pills nav-stacked">
        <g:each in="${list}" var="obj">
            <li><a href="${obj.urlName}">${obj.name}</a></li>
        </g:each>
    </ul>
</div>