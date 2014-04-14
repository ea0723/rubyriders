source 'https://rubygems.org'
ruby '2.1.0'

gem 'rails', '4.0.2'
gem "unicorn", "~> 4.7.0"                              # Webserver recommended by heroku (for increased scaling)
gem "unicorn-rails", "~> 1.1.0"                        # Makes unicorn the default rails server
gem "pg", "~> 0.17.1"                                  # Postgres gem
#gem "heroku", "~> 3.2.2"                               # Heroku hosting (original gemfile used 3.2.2)
gem "devise", "~> 3.2.2"                               # User authentication for users (original gemfile used 3.2.2)
gem 'activeadmin', github: 'gregbell/active_admin'     # The administration framework for Ruby on Rails
gem 'formtastic-bootstrap', '~> 3.0.0.rc.2'            # Needed to use bootstrap in formtastic (ActiveAdmin) forms
gem 'simple_form'                                      # Rails forms made easy
gem 'mail_form'                                        # Mail directly from simple_form
gem 'nested_form'                                      # For handling multiple models in a single form
#gem 'chosen-rails', group: :assets                    # For making form fields more user friendly.
gem 'chosen-rails'                                     # For making form fields more user friendly.
#gem "active_admin_importable", "~> 1.1.2"             # Ability to upload CSV files in ActiveAdmin
gem "ransack", github: "activerecord-hackery/ransack"  # gem "meta_search", '>= 1.1.3' Used for activeadmin. Allows simple search forms to be created
gem "jquery-rails", "~> 3.1.0"                         # Used for activeadmin (and other things)
gem "jquery-ui-rails", "~>4.2.0"                                  # Used for activeadmin (and other things)
#gem 'newrelic_rpm'                                    # Gem to support new relic application monitoring
#gem "omniauth", "~> 1.1.4"                            # Needed for Facebook login and signups
#gem "omniauth-facebook", "~> 1.5.1"                   # Facebook specific omniauth support
gem "fog"                                              # Standard gem for AWS access - e.g. uploading files via CarrierWave
#gem "browser", "~> 0.3.2"                             # Easy browser make/version detection
#gem "premailer-rails", "~> 1.6.1"                     # In-lines stylesheets and rewrite relative URLs in emails
gem "hstore-attributes", "~> 0.0.4"                    # Cuts down on code it takes to get hstore working in models
gem "uglifier", "~> 2.4.0"                             # Ruby wrapper for UglifyJS JavaScript compressor.
#gem 'modernizr-rails', '~> 2.7.1'                      #
gem 'sass-rails',   '>=3.2'                            # Needed for activeadmin
gem 'bootstrap-sass', '~> 3.1.1'                       # Bootstrap for rails using sass
gem 'font-awesome-sass'                                # required for font-awesome icons
gem 'flexslider'                                       # woothemes flexslider for rails

gem 'coffee-rails', '~> 4.0.1'
gem "possessive"                                       # For making a noun possesive
#gem 'draper', '~> 1.3'                                # Decorator manager
#gem "gravatar_image_tag", "~> 1.2.0"                  # Easy way of getting gravatar images and detecting if they are present
#gem "memcachier", "~> 0.0.2"                          # See https://devcenter.heroku.com/articles/memcachier#rails-3-and-4
#gem "dalli", "~> 2.7.0"                               # Required for memcachier
gem 'carrierwave'                                      # For file attachments

group :staging, :production do
  gem "rails_12factor", "~> 0.0.2"                     # Helps speed up deploys on heroku
end

group :development do
  #gem "rack-mini-profiler"                            # Show backend performance info
end

group :development, :test, :staging do
  gem "awesome_print"                                  # Nicely formatted data structures in console, for example "ap User.first"
  gem "factory_girl_rails", "~> 4.3.0"                 # Test data generator -- see spec/factories/factories.rb
  gem "faker", "~> 1.2.0"                              # Easy way to add fake data: names, email addresses, etc.
  gem "git-smart", "~> 0.1.9"                          # Allows "git smart-pull" for less merge messes
end

group :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "capybara", "~> 2.2.1"
  gem "database_cleaner", "~> 1.2.0"
  gem "xpath", "~> 2.0.0"
  gem "selenium-webdriver", "~> 2.39.0"
  gem "capybara-firebug", '~> 2.0.0'
  gem "codeclimate-test-reporter", require: false     # Semaphore & code climate integration: https://semaphoreapp.com/projects/2578/integrations/code_climate/new
  gem "timecop", "~> 0.7.0"                           # Set system time for tests
end

# add these gems to help with the transition to Rails 4:
gem 'protected_attributes'
gem 'rails-observers'

gem 'pry-debugger', group: [:development, :test]      # Pry navigation commands via debugger (formerly ruby-debug) https://github.com/nixme/pry-debugger


