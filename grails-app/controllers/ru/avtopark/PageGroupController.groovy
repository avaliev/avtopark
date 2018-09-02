package ru.avtopark

import grails.transaction.Transactional

@Transactional(readOnly = true)
class PageGroupController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def list = PageGroup.list();
        render(view: 'index', model: [pageGroups: list])
    }

    def show(PageGroup pageGroupInstance) {
        respond pageGroupInstance
    }

    def create() {
        render(view: 'create', model: [pageGroup: new PageGroup()]);
    }

    @Transactional
    def save(PageGroup pageGroup) {
        if (pageGroup.title && pageGroup.url) {
            def oldEn = CustomPage.findByUrl(pageGroup.url)
            if (oldEn) {
                oldEn.title = pageGroup.title;
                oldEn.save()
            } else {
                pageGroup.save()
            }
            redirect(action: "index")
        } else {
            render(view: 'create', model: [pageGroup: pageGroup, msg: "Нужно заполнить все поля"])
        }
    }

    def edit(String url) {
        def pageGroup = PageGroup.findByUrl(url);
        if (pageGroup) {
            render(view: "create", model: [pageGroup: pageGroup])
        }
    }
}
