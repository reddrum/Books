source 'https://rubygems.org'
ruby '2.5.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'

gem 'pg'

gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'simple_form', '~> 3.4'

gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'

gem 'devise', '~> 4.5'

gem 'paperclip', '~> 5.1'

gem 'searchkick', '~> 2.1', '>= 2.1.1'

gem 'activeadmin', github: 'activeadmin'

gem 'active_skin'

gem 'omniauth'

gem 'omniauth-facebook'

gem 'omniauth-vkontakte'

gem "figaro"

gem 'will_paginate', '~> 3.1', '>= 3.1.6'

gem 'bootstrap-will_paginate', '~> 1.0'

gem 'rb-readline', '~> 0.5.5'

gem 'aws-sdk', '~> 3.0', '>= 3.0.1'

gem 'will_paginate-bootstrap'

gem 'codeclimate-test-reporter', '~> 1.0', '>= 1.0.8'

gem 'simplecov', :require => false, :group => :test

gem 'rails_12factor', '~> 0.0.3'

gem 'sprockets', '~>3.7.2'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.7', '>= 3.7.2'
  gem "factory_bot_rails"
  gem 'database_cleaner'
  gem 'capybara', '~> 2.16', '>= 2.16.1'
  gem 'selenium-webdriver'
  gem 'sqlite3'
end

group :development do
  gem 'capistrano', '~> 3.7', '>= 3.7.2'

  gem 'capistrano-rails', '~> 1.2', '>= 1.2.2'

  gem 'capistrano-passenger', '~> 0.2.0'

  gem 'capistrano-rbenv', '~> 2.1'

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# group :production do
#   gem 'pg'
#   gem 'rails_12factor'
# end