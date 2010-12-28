package mn.xenon

class Translation {

  RootWord rootWord
  String word
  String definition
  String alsoKnownAs
  String generalization
  String specialization
  String formalDefinition
  String moreInformation
  Date addedDate = new Date()
  User user

  static hasMany = [comments : Comment , vote: Vote]
  static mappedBy = [comments : "translation", vote: "votedTranslation"]

  static constraints = {
    word(blank: false)
    definition(size: 0..2048)
    alsoKnownAs(size: 0..2048)
    generalization(size: 0..2048)
    specialization(size: 0..2048)
    formalDefinition(size: 0..2048)
    moreInformation(size: 0..2048)
  }
}
