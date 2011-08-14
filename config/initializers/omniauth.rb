Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, APP_CONFIG['omniauth']['github_id'], APP_CONFIG['omniauth']['github_secret']
end