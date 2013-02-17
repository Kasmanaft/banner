source 'https://rubygems.org'

gem 'rails', '~>3.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'slim-rails'
gem 'devise'
gem 'carrierwave'
gem 'rmagick'
gem 'inherited_resources'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'twitter-bootstrap-rails'
  gem 'less-rails'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  # Test Driven Development
  gem 'rspec-rails', '>= 2.9'

  # Factories
  gem 'factory_girl_rails'

  # Test emails
  gem 'email_spec'

  # Matchers
  #gem 'shoulda'

  # Generators
  gem 'ffaker'

  # Capybara
  gem 'capybara'

  # Cucumber
  gem 'cucumber-rails', :require => false

  # Cleaner
  gem 'database_cleaner'

  # better errors
  gem 'better_errors'
  gem 'binding_of_caller'

  # Quiting assets output for development
  gem 'quiet_assets'

  # Better than the default rails console/irb
  gem 'pry-rails'

  # Show logs in chrome ext 
  gem 'meta_request'

  #gem "jasminerice"
  gem 'rack-livereload'

  # Guards
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  #gem 'guard-jasmine' #, github: 'netzpirat/guard-jasmine'
  gem 'guard-bundler', :require => false
  if RUBY_PLATFORM =~ /darwin/i
    gem 'guard-pow', :require => false
    gem 'terminal-notifier-guard', :require => false
  end

  # Guard Helpers
  gem 'rb-fsevent', :require => false
  gem 'yajl-ruby', :require => false
end
