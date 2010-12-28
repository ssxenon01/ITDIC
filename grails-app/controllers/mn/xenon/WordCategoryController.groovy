package mn.xenon

import grails.plugins.springsecurity.Secured

class WordCategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]


    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [wordCategoryInstanceList: WordCategory.list(params), wordCategoryInstanceTotal: WordCategory.count()]
    }
    @Secured(['ROLE_ADMIN'])
    def create = {
        def wordCategoryInstance = new WordCategory()
        wordCategoryInstance.properties = params
        return [wordCategoryInstance: wordCategoryInstance]
    }
    @Secured(['ROLE_ADMIN'])
    def save = {
        def wordCategoryInstance = new WordCategory(params)
        if (wordCategoryInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), wordCategoryInstance.id])}"
            redirect(action: "show", id: wordCategoryInstance.id)
        }
        else {
            render(view: "create", model: [wordCategoryInstance: wordCategoryInstance])
        }
    }

    def show = {
        def wordCategoryInstance = WordCategory.get(params.id)
        if (!wordCategoryInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
            redirect(action: "list")
        }
        else {
            [wordCategoryInstance: wordCategoryInstance]
        }
    }
    @Secured(['ROLE_ADMIN'])
    def edit = {
        def wordCategoryInstance = WordCategory.get(params.id)
        if (!wordCategoryInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [wordCategoryInstance: wordCategoryInstance]
        }
    }
    @Secured(['ROLE_ADMIN'])
    def update = {
        def wordCategoryInstance = WordCategory.get(params.id)
        if (wordCategoryInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (wordCategoryInstance.version > version) {
                    
                    wordCategoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'wordCategory.label', default: 'WordCategory')] as Object[], "Another user has updated this WordCategory while you were editing")
                    render(view: "edit", model: [wordCategoryInstance: wordCategoryInstance])
                    return
                }
            }
            wordCategoryInstance.properties = params
            if (!wordCategoryInstance.hasErrors() && wordCategoryInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), wordCategoryInstance.id])}"
                redirect(action: "show", id: wordCategoryInstance.id)
            }
            else {
                render(view: "edit", model: [wordCategoryInstance: wordCategoryInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
            redirect(action: "list")
        }
    }
    @Secured(['ROLE_ADMIN'])
    def delete = {
        def wordCategoryInstance = WordCategory.get(params.id)
        if (wordCategoryInstance) {
            try {
                wordCategoryInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'wordCategory.label', default: 'WordCategory'), params.id])}"
            redirect(action: "list")
        }
    }
}
