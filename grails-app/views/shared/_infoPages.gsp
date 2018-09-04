<div class="row">
    <g:each in="${pageGroups}" var="group">
        <div class="col-sm-2">
            <h5>${group.title}</h5>
            <ul>
            <g:each in="${group.pages}" var="page">
               <li><a href="/p/${page.group.url}/${page.url}">${page.title}</a></li>
            </g:each>
            </ul>
        </div>
    </g:each>
</div>