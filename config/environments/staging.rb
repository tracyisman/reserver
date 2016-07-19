require_relative "production"

Reserver::Application.configure do
  # ...

  config.action_mailer.default_url_options = { host: 'staging.reserver.com' }
end
