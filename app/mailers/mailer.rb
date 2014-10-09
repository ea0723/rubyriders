class Mailer < ActionMailer::Base
	default from: '"rubyriders" <noreply@rubyriders.com>'

	def signup_mail(request)
		@message = request.message
    @sender = request.name
    @reply_to = request.email
    @sent = request.created_at
    @id = request.id
    @subject = request.subject
		mail(to: Rails.application.config.reply_to_rubyriders, subject: 'New Info Request for Rubyriders')
	end
end