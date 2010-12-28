package mn.xenon

import grails.plugins.springsecurity.Secured

class TranslationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [translationInstanceList: Translation.list(params), translationInstanceTotal: Translation.count()]
    }
    @Secured(['ROLE_USER'])
    def create = {
        def translationInstance = new Translation()
        translationInstance.properties = params
        return [translationInstance: translationInstance]
    }
    @Secured(['ROLE_USER'])
    def save = {
        def translationInstance = new Translation(params)
        translationInstance.user = User.get(springSecurityService.principal.id)
        if (translationInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'translation.label', default: 'Translation'), translationInstance.id])}"
            redirect(action: "show", id: translationInstance.id)
        }
        else {
            render(view: "create", model: [translationInstance: translationInstance])
        }
    }

    def show = {
        def translationInstance = Translation.get(params.id)
        if (!translationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
            redirect(action: "list")
        }
        else {
            [translationInstance: translationInstance]
        }
    }
    @Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def edit = {
        def translationInstance = Translation.get(params.id)
        if (!translationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [translationInstance: translationInstance]
        }
    }
    @Secured(['IS_AUTHENTICATED_REMEMBER'])
    def update = {
        def translationInstance = Translation.get(params.id)
        if (translationInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (translationInstance.version > version) {
                    
                    translationInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'translation.label', default: 'Translation')] as Object[], "Another user has updated this Translation while you were editing")
                    render(view: "edit", model: [translationInstance: translationInstance])
                    return
                }
            }
            translationInstance.properties = params
            if (!translationInstance.hasErrors() && translationInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'translation.label', default: 'Translation'), translationInstance.id])}"
                redirect(action: "show", id: translationInstance.id)
            }
            else {
                render(view: "edit", model: [translationInstance: translationInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
            redirect(action: "list")
        }
    }
    @Secured(['ROLE_ADMIN'])
    def delete = {
        def translationInstance = Translation.get(params.id)
        if (translationInstance) {
            try {
                translationInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'translation.label', default: 'Translation'), params.id])}"
            redirect(action: "list")
        }
    }
}
