source "https://rubygems.org"

gem "rails", "4.1.1"

# I18n for default messages
gem "rails-i18n"

# Use postgresql as the database for Active Record
gem "pg"

# Web server
gem "puma"
gem "foreman"

# Use SCSS for stylesheets
gem "sass-rails", "~> 4.0.3"

# Nice SASS mixins
gem "bourbon"

# Boostrap
gem "bootstrap-sass", "~> 3.1.1"

# Font awesome
gem "font-awesome-rails"

# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# Form
gem "simple_form"

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem "therubyracer", platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails"

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem "turbolinks"

# Loading bar
gem "nprogress-rails"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.0"

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem "spring", group: :development

# Use ActiveModel has_secure_password
gem "bcrypt", "~> 3.1.7"

# No destroy
gem "paranoia", "~> 2.0"

# Document uploading
gem "carrierwave"
gem "fog"

# Image manipulation
gem "mini_magick"

# Pagination
gem "kaminari"

# HTML/XML parser
gem "nokogiri"

# HTML emails
gem "premailer-rails"

# Secure tokens/passwords
gem "dotenv-rails"

# Background jobs
gem "sidekiq"
gem "sinatra", ">= 1.3.0", require: nil

# Authentication
gem "devise"
gem "devise-async"

# Use debugger
gem "debugger", group: [:development, :test]

group :development do
  # Use Capistrano for deployment
  gem "capistrano"
  gem "capistrano-basement", github: "lodgem/capistrano-basement"
  gem "capistrano-rails", "~> 1.1.0"
  gem "capistrano-bundler", "~> 1.1.1"

  # Scan for security issues
  gem "brakeman"

  # Email in dev
  gem "letter_opener"

  # N+1 query detection
  gem "bullet"

  # Hide asset requests from development logs
  gem "quiet_assets"

  # Rails errors on steroids
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
end

group :test do
  gem "minitest-rails"
  gem "factory_girl_rails"
end
