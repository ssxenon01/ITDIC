
import mn.xenon.openId.SecUserSecRole
import mn.xenon.openId.SecRole
import mn.xenon.openId.SecUser
import mn.xenon.User

class BootStrap {

   def springSecurityService

   def init = { servletContext ->
      String password = springSecurityService.encodePassword('password')

      def roleAdmin = new SecRole(authority: 'ROLE_ADMIN').save()
      def roleUser = new SecRole(authority: 'ROLE_USER').save()

      def user = new User(username: 'user', password: password, enabled: true).save()
      def admin = new User(username: 'admin', password: password, enabled: true).save()

      SecUserSecRole.create user, roleUser
      SecUserSecRole.create admin, roleUser
      SecUserSecRole.create admin, roleAdmin, true
   }
}