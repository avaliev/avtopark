<section class="service_teasers">
    <h2 class="txt-c">Переезды</h2>

    <div class="service_teaser">
        <div class="row">
            <div class="service_photo col-sm-4 col-md-4">
                <img src="/images/kvart_pereezd.jpg" alt="переезд квартирный в ${city.name}" height="300">
            </div>

            <div class="service_details col-sm-8 col-md-8">
                <h2 class="section_header skincolored">Переезд квартирный
                <g:if test="${route != null}">
                    ${route.name}
                </g:if>
                <g:else>
                    в городе ${city.name}
                </g:else>
                </h2>
                <g:render template="/shared/pereezdText"></g:render>
            </div>
        </div>
    </div>

    <div class="service_teaser">
        <div class="row">
            <div class="service_details col-sm-8 col-md-8">
                <h2 class="section_header skincolored">Офисный переезд
                <g:if test="${route != null}">
                    ${route.name}
                </g:if>
                <g:else>
                    в городе ${city.name}
                </g:else>
                </h2>
                <g:render template="/shared/pereezdText2"></g:render>
            </div>

            <div class="service_photo col-sm-4 col-md-4">
                <img src="/images/office.jpg" alt="офисные переезды ${city.name}">
            </div>
        </div>
    </div>

</section>