Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :artists, only: [:index]
  resources :songs, only: [:index, :show]

  get '/songs/new', to: 'songs#show'
  get '/songs/edit', to: 'songs#show'

  get '/artists/:id', to: 'artists#show'
  get '/artists/edit', to: 'artists#show'

  root to: 'artists#index'
end
