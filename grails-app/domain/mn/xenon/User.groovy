package mn.xenon

class User {

  String username
  String password
  boolean enabled
  boolean accountExpired
  boolean accountLocked
  boolean passwordExpired
  boolean isOnline



  static constraints = {
    username blank: false, unique: true
    password blank: false
  }

  static mapping = {
    password column: '`password`'
  }
  static hasMany = [translations: Translation, words: RootWord, comments: Comment, votes: Vote]
  static mappedBy = [translations: "user", words: "createdUser", comments: "wroteUser", votes: "votedUser"]
  Set<Role> getAuthorities() {
    UserRole.findAllByUser(this).collect { it.role } as Set
  }
  String toString(){
    username
  }
}
