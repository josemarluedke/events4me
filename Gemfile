source 'https://rubygems.org'

gem 'rails', '3.2.7'

# Database
gem 'pg'
gem "foreigner"

# Improvements
gem 'inherited_resources'
gem 'has_scope'

# Authentication
gem "devise", "~> 2.1.2"
gem "omniauth"
gem "omniauth-facebook"
gem 'omniauth-twitter'

# Heroku
gem 'thin'
gem 'heroku'

# Frontend stuff
gem 'jquery-rails'
gem "slim"
gem "slim-rails"
gem 'initjs'

# Tools
gem 'simple_form'
gem 'auto_html'
gem 'useragent'
gem 'will_paginate'

# Navigation
gem 'simple-navigation'

# Administration and access management
gem 'rails_admin'
gem 'cancan'

group :assets do
  gem 'sass-rails',   '~> 3.2.5'
  gem 'coffee-rails', '~> 3.2.2'
  gem "compass-rails"
  gem 'bootstrap-sass'
  gem "uglifier", '>= 1.0.3'
  gem 'turbolinks'
end

group :production do
  gem "execjs"
  gem 'therubyracer', :platform => :ruby
end

group :development, :test do
  gem "rspec-rails", ">= 2.11.0"
  gem "shoulda-matchers"
  gem "machinist", ">= 2.0"
  gem "ffaker"
  gem 'database_cleaner'
  gem "capybara"
  gem "jasmine"
end

group :development do
  gem 'pry'
  gem 'awesome_print'
end
