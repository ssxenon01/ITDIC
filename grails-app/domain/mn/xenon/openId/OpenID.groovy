package mn.xenon.openId



class OpenID {

	String url

	static belongsTo = [user: SecUser]

	static constraints = {
		url unique: true
	}
}
