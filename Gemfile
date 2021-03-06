source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.14'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'wuparty'
gem 'redis'
gem 'resque'
gem 'geocoder'
gem 'decent_exposure'

# Gems for active admin
gem 'activeadmin'
gem "meta_search",    '>= 1.1.0.pre'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails', '~> 1.0.3'
  gem 'zurb-foundation', '~> 3.0.9'

end

gem 'jquery-rails', "2.3.0"
gem 'thin'
gem 'haml-rails'
gem 'high_voltage', ">= 1.2.0"
gem 'rdiscount'
gem 'airbrake'

group :development do
  gem 'heroku'
  gem 'foreman'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.9.0'
  gem 'dotenv'
  gem 'debugger'
end

group :test do
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers'
  gem 'launchy'
  gem 'fakeweb'
  gem 'vcr'
end

group :staging, :production do
  gem 'newrelic_rpm'
end

