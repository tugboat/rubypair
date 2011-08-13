Rubypair::Application.routes.draw do
  get '/auth/github/callback' => "sessions#create"

  root :to => "home#index"
end
