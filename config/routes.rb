Rubypair::Application.routes.draw do
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signout' => 'sessions#destroy'

  root :to => "home#index"

  resource :profile, :only => [:edit, :update, :show]
end
