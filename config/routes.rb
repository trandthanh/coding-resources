Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#search'

  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search'

  resources :favorites, only: [:index]

  resources :favorite_lessons, only: [:create, :destroy]
  resources :favorite_tutorials, only: [:create, :destroy]

end
