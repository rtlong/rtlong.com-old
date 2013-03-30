source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

platforms :ruby do
  gem 'pg'
  gem 'foreman', groups: [:development]
end

platforms :jruby do
  #noinspection GemInspection
  gem 'jruby-openssl'
  #noinspection GemInspection
  gem 'activerecord-jdbcpostgresql-adapter'
end

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

gem 'omniauth'
gem 'omniauth-github'

gem 'haml-rails'

gem 'puma'

gem 'attribute_normalizer'

gem 'redcarpet'

gem 'mail'
gem 'premailer-rails'
gem 'nokogiri' # dependency of premailer-rails

group :development do
  gem 'zeus', require: false
  gem 'guard', require: false
  gem 'guard-yard', require: false
  gem 'pry-rails'
  gem 'pry-doc', require: false
end

group :test, :development do
  gem 'rspec-rails', '~> 2.0'
  gem 'capybara'
  gem 'fabrication'
end

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
  #gem 'angular-rails'
  gem 'jquery-rails'
  gem 'zurb-foundation', '~> 4.0.0'
end
