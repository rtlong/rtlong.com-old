source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

platforms :ruby do
  gem 'pg'
  gem 'foreman', groups: [:development]
end

platforms :jruby do
  gem 'jruby-openssl'
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



group :development do
  gem 'zeus', require: false
  gem 'guard', require: false
  gem 'guard-yard', require: false
  gem 'pry-rails', require: false
  gem 'pry-doc', require: false
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem 'fabrication'
end

group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
  gem 'angular-rails'
end
