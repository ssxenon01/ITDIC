package mn.xenon

class WordCategory {

  String categoryName

  static hasMany = [tags: Tag]
  static mappedBy = [tags: "wordCategory"]

  static constraints = {
    categoryName(blank: false , unique: true )
  }
  String toString(){
    categoryName
  }
}
