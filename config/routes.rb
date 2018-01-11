Rails.application.routes.draw do
  root 'main#index'

  get '/auth/google_oauth2/callback', to: 'sessions#create'

  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: 'sessions#destroy'

  resources :users

  resources :player_profiles
  resources :scout_profiles
  resources :team_profiles
end
