Rubypair::Application.routes.draw do
  match '/auth/:provider/callback' => "sessions#create"

  root :to => "home#index"
end
