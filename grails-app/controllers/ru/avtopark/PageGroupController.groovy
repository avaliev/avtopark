package ru.avtopark


import static org.springframework.http.HttpStatus.*
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
        respond new PageGroup(params)
    }

    @Transactional
    def save(PageGroup pageGroupInstance) {
        if (pageGroupInstance == null) {
            notFound()
            return
        }

        if (pageGroupInstance.hasErrors()) {
            respond pageGroupInstance.errors, view: 'create'
            return
        }

        pageGroupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pageGroup.label', default: 'PageGroup'), pageGroupInstance.id])
                redirect pageGroupInstance
            }
            '*' { respond pageGroupInstance, [status: CREATED] }
        }
    }

    def edit(PageGroup pageGroupInstance) {
        respond pageGroupInstance
    }

    @Transactional
    def update(PageGroup pageGroupInstance) {
        if (pageGroupInstance == null) {
            notFound()
            return
        }

        if (pageGroupInstance.hasErrors()) {
            respond pageGroupInstance.errors, view: 'edit'
            return
        }

        pageGroupInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PageGroup.label', default: 'PageGroup'), pageGroupInstance.id])
                redirect pageGroupInstance
            }
            '*' { respond pageGroupInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PageGroup pageGroupInstance) {

        if (pageGroupInstance == null) {
            notFound()
            return
        }

        pageGroupInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PageGroup.label', default: 'PageGroup'), pageGroupInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pageGroup.label', default: 'PageGroup'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
