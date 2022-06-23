Rails.application.routes.draw do

  root to: 'home#index'
  devise_for :users
  get '/upload', to: 'images#new'
  resources :images, only: [:index, :show, :create]

  get '/@:email', to: 'users#show', as: :profile
end
