package ru.avtopark

class CustompageController {

    def index() {
        def list = CustomPage.list();
        render(view: 'index', model: [pages: list])
    }


    def page(String url) {

    }

    def create() {
        render(view: "createpage", model: [page: new CustomPage()])
    }

    def save(CustomPage page) {
        if (page.url && page.title && page.metaTag && page.content) {
            page.save()
            redirect(action: "index")
        } else {
            render(view: 'createpage', model: [page: page, msg: "Нужно заполнить все поля"])
        }
    }

    def edit(String url, String title, String metaTag, String decr) {

    }
}
