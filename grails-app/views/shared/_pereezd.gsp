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
                <p class="descr"> Смена места жительства часто связано с дополнительными событиями: созданием новой семьи, сменой работы, длительной командировкой и т. д. Организация перевозки вещей связана с рядом сложностей. Чтобы максимально упростить для себя этот процесс и направить все силы на обустройство нового жилья, перевозку личных вещей лучше доверить опытной и авторитетной транспортной компании.
                Квартирный переезд – стресс для переезжающего. Нужно грамотно упаковать вещи, найти людей, которые помогут с погрузкой. Заказать транспорт – одновременно недорогой и такой, который сможет довезти мебель, технику и личные вещи в целости и сохранности.
                Как грамотно организовать переезд?
                Для начала нужно определиться с перевозчиком, и только потом паковать вещи. Многие компании предлагают переезды под ключ: когда сотрудники помогают разобрать и собрать мебель, упаковать вещи, предоставляют упаковочный материал, который защитит имущество от повреждения.
                Если вы пакуете вещи сами, не забудьте сделать пометки на коробках с хрупкими предметами: для них в автомобиле выберут самое безопасное место.
                Что мы предлагаем?
                Квартирные переезды из города в город по территории России – одно из основных направлений работы нашей транспортной компании. Мы предлагаем:
                Удобные и вместительные автомобили;
                Услуги грузчиков;
                Услуги по упаковке и распаковке отдельных вещей (габаритная мебель, бытовая техника, посуда);
                Логистическое сопровождение (экспедитор проследит за сохранностью всего имущества). Эта услуга необходима тем, кто переезжает на дальние расстояния.
                Перевозка личных вещей осуществляется в любой день недели. Мы заключаем договор с клиентом. Этот документ служит гарантией соблюдения сроков и качества предоставляемых услуг. </p>
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