package mn.xenon

import grails.converters.JSON

class SearchController {

  def index = {

  }
  def lastword = {
    def lastAdded = RootWord.findAll([offset: 0, max: 5, sort: "addedDate", dir: "asc"])
    def lastUpdated = RootWord.findAll([offset: 0, max: 5, sort: "updatedDate", dir: "asc"])
    def lastTranslate = Translation.findAll([offset: 0, max: 5, sort: "addedDate", dir: "asc"])
    [lastAddedRoot: lastAdded, lastUpdated: lastUpdated, lastTranslate: lastTranslate]
  }

  def word = {
    def result
    def word = params.query
    def size = word?.size()
    def totalCount
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
      totalCount = result?.list()?.size() ?: 0
    }else{
      result = RootWord.findAll([offset: 0, max: 10])
      totalCount = result?.size() ?: 0
    }

    render """{"total_count":${totalCount} , "results":${result.collect { rootWord -> [word_id: rootWord.id , name: rootWord.word , description: rootWord.definition, moreInfo: rootWord.moreInformation , added: rootWord.addedDate  ] as JSON  } }}"""
    }
}
