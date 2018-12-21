Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#search'

  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search'

  resources :lessons do
    put :favorite, on: :member
  end

  resources :tutorials do
    put :favorite, on: :member
  end

  get '/dashboard', to: 'dashboards#dashboard'
end
