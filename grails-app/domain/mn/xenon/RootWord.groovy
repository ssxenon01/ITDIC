package mn.xenon

class RootWord {


  String word
  String definition
  String alsoKnownAs
  String generalization
  String specialization
  String seeAlso
  String formalDefinition
  String moreInformation
  Date addedDate = new Date()
  Date updatedDate = new Date()
  User updatedUser
  User createdUser

  static hasMany = [translations: Translation , tags: Tag]
  static mappedBy = [translations: "rootWord" , tags: "rootWord"]

  static constraints = {
    word(blank: false, unique: true)
    createdUser(nullable: false)
    definition(size: 0..2048)
    alsoKnownAs(size: 0..2048)
    generalization(size: 0..2048)
    specialization(size: 0..2048)
    seeAlso(size: 0..2048)
    formalDefinition(size: 0..2048)
    moreInformation(size: 0..2048)
  }

  String toString() {
    word
  }
}
