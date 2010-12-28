package mn.xenon

class Tag {

  WordCategory wordCategory
  RootWord rootWord

  static constraints = {
  }
  static Tag link(rootWord, wordCategory) {
    def m = Tag.findByRootWordAndWordCategory(rootWord, wordCategory)
    if (!m) {
      m = new Tag()
      wordCategory.addToTag(m)
      wordCategory?.addToTag(m)
      m.save()
    }
    return m
  }

  static void unlink(rootWord, wordCategory) {
    def m = Tag.findByRootWordAndWordCategory(rootWord, wordCategory)
    if (m) {
      rootWord?.removeFromTag(m)
      wordCategory?.removeFromTag(m)
      m.delete()
    }
  }
}
