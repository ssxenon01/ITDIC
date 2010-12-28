package mn.xenon

class SearchController {

  def index = {
    def result
    def word = params.word
    def size = word?.size()
    if (size > 1) {
      result = RootWord.findByWord(word)
      if (!result) {
        result = RootWord.findByWordLike("${word}%", [offset: 0, max: 10])
      }
      if (!result) {
        result = RootWord.findByWordLike("% ${word} %", [offset: 0, max: 10])
      }
      if (!result && size >= 3) {
        def substring = word[0..-2]
        result = RootWord.findByWordLike("${substring}%", [offset: 0, max: 10])
      }
    }
    [rootWord: result , word : word]
  }
  def lastword = {
    def lastAdded = RootWord.findAll([offset: 0, max: 5, sort: "addedDate", dir: "asc"])
    def lastUpdated = RootWord.findAll([offset: 0, max: 5, sort: "updatedDate", dir: "asc"])
    def lastTranslate = Translation.findAll([offset: 0, max: 5, sort: "addedDate", dir: "asc"])
    [lastAddedRoot: lastAdded, lastUpdated: lastUpdated, lastTranslate: lastTranslate]
  }

}
