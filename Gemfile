source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
# Use sqlite and postgresql as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "sqlite3", "~> 1.4"
end

group :development do
  gem 'listen', '~> 3.3'
end

group :production do
  gem 'pg', '~> 1.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise', '~> 4.7'
gem 'image_processing', '~> 1.12'
gem "aws-sdk-s3", require: false
# Since Ruby 3.1
gem 'net-smtp', '~> 0.3'
gem 'net-pop', '~> 0.1'
gem 'net-imap', '~> 0.2'