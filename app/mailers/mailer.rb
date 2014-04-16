class Mailer < ActionMailer::Base
	default from: '"rubyangel" <noreply@rubyangel.com>'

	def signup_mail(request)
		@message = request.message
		mail(to: request.email, subject: request.subject)
	end
end