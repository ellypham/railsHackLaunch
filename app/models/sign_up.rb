class SignUp < ActiveRecord::Base
	def say_hello
		"Hello, #{self.name}"
	end

	def loud_email
		self.email.upcase
	end

	def email
		if !read_attribute(:email).nil?
			read_attribute(:email)
		else
				"noreply@hackeryou.com"
		end
	end
end

#sign_up = SignUp.new(name: 'Ryan')
#sign_up.say_hello
