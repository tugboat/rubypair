Rubypair::Application.routes.draw do
  get '/auth/github/callback' => "users#github_auth_callback"
end
