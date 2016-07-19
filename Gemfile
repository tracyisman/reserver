source "https://rubygems.org"

ruby "2.3.0"

gem "administrate"
gem "devise"
gem "foreman"
gem "jquery-rails"
gem "pg"
gem "pry-rails"
gem "puma"
gem "rails", "~> 4.2.0"
gem "retina_tag", github: "naps62/retina_tag", ref: "9389bec"
gem "sass-rails"
gem "slim-rails"

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "letter_opener"
  gem "quiet_assets"
  gem "refills"
  gem "spring", require: false
  gem "spring-commands-rspec", require: false
end

group :development, :test do
  gem "bitters"
  gem "bourbon"
  gem "factory_girl_rails"
  gem "neat"
  gem "pry-remote", github: "Mon-Ouie/pry-remote"
  gem "rspec-rails", "~> 3.0"
  gem "rubocop", require: false
  gem "scss_lint", require: false
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "faker"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"

  install_if -> { `cat /etc/os-release 2> /dev/null` !~ /Arch Linux/ } do
    gem "capybara-webkit"
  end
end

group :production, :staging do
  gem "rack-timeout"
  gem "rails_12factor"
  gem "uglifier"
end
