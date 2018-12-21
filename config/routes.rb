Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
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

  resources :favorite_lessons, except: [:delete] do
    member do
      patch :complete
    end
  end

  delete "favorite_lessons/:id", to: "favorite_lessons#destroy", as: :delete_favorite_lesson

  resources :favorite_tutorials, except: [:delete] do
    member do
      patch :complete
    end
  end

  delete "favorite_tutorials/:id", to: "favorite_tutorials#destroy", as: :delete_favorite_tutorial
end
