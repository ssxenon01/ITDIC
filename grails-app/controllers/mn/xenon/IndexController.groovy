package mn.xenon

class IndexController {

  def index = {
    params.max = Math.min(params.max ? params.int('max') : 10, 100)
    [rootWordInstanceList: RootWord.list(params), rootWordInstanceTotal: RootWord.count()]
  }

}
