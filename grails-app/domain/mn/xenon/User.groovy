package mn.xenon

import mn.xenon.openId.SecUser

class User extends SecUser {

  String firstName
  String lastName
  String email


  static constraints = {

  }


  static hasMany = [translations: Translation, words: RootWord, comments: Comment, votes: Vote]
  static mappedBy = [translations: "user", words: "createdUser", comments: "wroteUser", votes: "votedUser"]

  String toString(){
    username
  }
}
