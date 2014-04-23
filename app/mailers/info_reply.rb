class InfoReply < ActionMailer::Base
  default from: '"rubyangel" <noreply@rubyangel.com>'

  def info_reply(request)
    @message = request.message
    @sender  = request.name
    @reply_to = Rails.application.config.reply_to_nate
    @id      = request.id
    mail(to: request.email, subject: 'Re: your request for info about AngelPM')
  end
end
