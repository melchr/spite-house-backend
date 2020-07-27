Rails.application.routes.draw do
  get '/signup' => 'users#new', as: 'signup'
  post '/signup' => 'users#create'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  post '/logout', to: "sessions#destroy"

  get '/not_found' => 'pages#not_found'

  resources :albums do
    resources :reviews, except: [:index]
  end
  resources :users, only: [:show, :destroy]
  resources :reviews, only: [:index]

  root to: "albums#index"
end
