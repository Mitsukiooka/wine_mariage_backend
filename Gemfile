source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.1"

gem "active_model_serializers", require: true
gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "mysql2", "~> 0.5"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem 'rack-cors'

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem 'rspec-json_matcher'
  gem 'rspec_junit_formatter'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem 'capybara', '>= 2.15'
  gem "factory_bot_rails"
  gem 'faker'
  gem 'pry-rails'
end
