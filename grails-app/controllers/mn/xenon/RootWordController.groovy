package mn.xenon

import grails.plugins.springsecurity.Secured

class RootWordController {

  static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
  def springSecurityService

  def index = {
    redirect(action: "list", params: params)
  }

  def list = {
    params.max = Math.min(params.max ? params.int('max') : 10, 100)
    [rootWordInstanceList: RootWord.list(params), rootWordInstanceTotal: RootWord.count()]
  }
  @Secured(['ROLE_USER'])
  def create = {
    def rootWordInstance = new RootWord()
    rootWordInstance.properties = params
    return [rootWordInstance: rootWordInstance]
  }
  @Secured(['ROLE_USER'])
  def save = {
    def rootWordInstance = new RootWord(params)
    rootWordInstance.createdUser = User.get(springSecurityService.principal.id)
    rootWordInstance.updatedUser = User.get(springSecurityService.principal.id)
    if (rootWordInstance.save(flush: true)) {
      flash.message = "${message(code: 'default.created.message', args: [message(code: 'rootWord.label', default: 'RootWord'), rootWordInstance.id])}"
      redirect(action: "show", id: rootWordInstance.id)
    }
    else {
      render(view: "create", model: [rootWordInstance: rootWordInstance])
    }
  }

  def show = {
    def rootWordInstance = RootWord.get(params.id)
    if (!rootWordInstance) {
      flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
      redirect(action: "list")
    }
    else {
      [rootWordInstance: rootWordInstance]
    }
  }
  @Secured(['ROLE_USER'])
  def edit = {
    def rootWordInstance = RootWord.get(params.id)
    if (!rootWordInstance) {
      flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
      redirect(action: "list")
    }
    else {
      return [rootWordInstance: rootWordInstance]
    }
  }
  @Secured(['ROLE_USER'])
  def update = {

    def rootWordInstance = RootWord.get(params.id)
    rootWordInstance.updatedUser = User.get(springSecurityService.principal.id)
    rootWordInstance.updatedDate = new Date()
    if (rootWordInstance) {
      if (params.version) {
        def version = params.version.toLong()
        if (rootWordInstance.version > version) {

          rootWordInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'rootWord.label', default: 'RootWord')] as Object[], "Another user has updated this RootWord while you were editing")
          render(view: "edit", model: [rootWordInstance: rootWordInstance])
          return
        }
      }
      rootWordInstance.properties = params
      if (!rootWordInstance.hasErrors() && rootWordInstance.save(flush: true)) {
        flash.message = "${message(code: 'default.updated.message', args: [message(code: 'rootWord.label', default: 'RootWord'), rootWordInstance.id])}"
        redirect(action: "show", id: rootWordInstance.id)
      }
      else {
        render(view: "edit", model: [rootWordInstance: rootWordInstance])
      }
    }
    else {
      flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
      redirect(action: "list")
    }
  }
  @Secured(['ROLE_ADMIN'])
  def delete = {
    def rootWordInstance = RootWord.get(params.id)
    if (rootWordInstance) {
      try {
        rootWordInstance.delete(flush: true)
        flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
        redirect(action: "list")
      }
      catch (org.springframework.dao.DataIntegrityViolationException e) {
        flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
        redirect(action: "show", id: params.id)
      }
    }
    else {
      flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'rootWord.label', default: 'RootWord'), params.id])}"
      redirect(action: "list")
    }
  }
}
