package mn.xenon

class Vote {

    User votedUser
    Translation votedTranslation
    boolean good
    static Vote vote(User user , Translation translation,boolean good){
      def v = Vote.findByVotedTranslationAndVotedUser(user , translation)
      if(!v){
        v = new Vote()
        user?.addToVotes(v)
        translation?.addToVote(v)
        v.good=good
        v.save()
      }
      return v
    }
    static constraints = {
    }
}
