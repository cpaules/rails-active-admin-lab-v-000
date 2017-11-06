Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: [:index] 
  resources :songs, only: [:index, :show] 
  
  get '/patients/:id', to: 'patients#show'

  root to: 'artists#index'
end
