package ru.avtopark

class PageController {

    def index() {
        if (params.page) {
            CustomPage p = CustomPage.findByUrl(params.page);
            render(view: "page", model: [page: p])
            return;
        }
        render(text: "Page not found");
    }
}
