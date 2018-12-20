Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#search'

  get '/search', to: 'pages#search'
  post '/search', to: 'pages#search'

end
