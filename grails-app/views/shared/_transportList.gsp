<div class="transport">
    <h3>Транспорт</h3>
    <ul>
        <g:each in="${tlist}" var="t">
            <li class="tr-ref"><a href="/transport/${t.url}">${t.name}</a></li>
        </g:each>
    </ul>
</div>