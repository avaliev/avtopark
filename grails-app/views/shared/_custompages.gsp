<div class="">
    <h3>Полезные статьи</h3>
    <ul class="custom-p-l">
        <g:each in="${pages}" var="p">
            <li class="tr-ref"><a href="/p/${p.url}">${p.title}</a></li>
        </g:each>
    </ul>
</div>