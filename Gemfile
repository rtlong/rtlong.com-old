source 'https://rubygems.org'
ruby '2.1.1'

gem 'rails'

gem 'omniauth'
gem 'omniauth-github'

gem 'haml-rails'

gem 'unicorn'

gem 'attribute_normalizer'

gem 'redcarpet'

gem 'mail'
gem 'premailer-rails'
gem 'nokogiri' # dependency of premailer-rails

gem 'airbrake', '3.1.8'

gem 'rack-policy'

gem 'newrelic_rpm'

gem 'rack-canonical-host'

group :development do
  gem 'zeus', require: false
  gem 'guard', require: false
  gem 'guard-yard', require: false
  gem 'pry-rails'
  gem 'pry-doc', require: false
  gem 'foreman', require: false
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
  gem 'jquery-rails'
  gem 'zurb-foundation', '~> 4.0.0'
end
