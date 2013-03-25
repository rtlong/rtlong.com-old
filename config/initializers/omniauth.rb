Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :github, ENV['omniauth_github_key'], ENV['omniauth_github_secret']
end

OmniAuth.config.logger = Rails.logger
