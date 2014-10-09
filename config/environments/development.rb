RubyAngel::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # http://goo.gl/mFbq3
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.smtp_settings = {
      :enable_starttls_auto => true,
      :port               => 587,
      :ssl                => true,
      :port               => 465,
      :address            => 'smtp.sendgrid.net',
      :domain             => 'www.rubyriders.com',
      :authentication     => :plain,
      :user_name          => 'SuperBizon',
      :password           => 'olpermil923' # for security reasons you can use a environment variable too. (ENV['INFO_MAIL_PASS'])
  }

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.default_url_options = { :host => 'localhost', :protocol => 'http', :port => 3000}

  # Send notices to this person as set in mailers/mailer.rb
  config.reply_to_rubyriders = 'elena@rubyriders.com'

  #Paperclip.options[:command_path] = "/usr/local/bin/"

  config.assets.raise_production_errors = true


end