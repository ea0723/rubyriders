source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'pg'                                  # Use postgresql as the database for Active Record
gem 'hstore-attributes'                   # Allows definition of hstore attirbutes in model
#gem 'activeadmin'                         # The administration framework for Ruby on Rails
#gem 'meta_search'                         # Used for activeadmin. Allows simple search forms to be created
gem 'paperclip'                           # Easy upload management for ActiveRecord
gem 'rack-ssl-enforcer'                   # Add easy ability to force SSL
gem 'highcharts-rails'                    # Include highcharts javascript in asset pipeline
#gem 'sass-rails'                          # Use SCSS for stylesheets
gem 'uglifier'                            # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails'                        # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails'                        # Use jquery as the JavaScript library
gem 'turbolinks'                          # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder'                            # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "devise", "~> 3.2.3"				  # Use devise for user model and authentication
gem "bcrypt-ruby", "~> 3.1.5"			  # secure hash algorithm for wrapping passwords - use with devise



# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'
end

group :test do
 gem 'selenium-webdriver', '2.35.1'
 gem 'capybara', '2.1.0'
end


group :production do
 gem 'rails_12factor', '0.0.2'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
