Rails.application.routes.draw do
  resources :posts

  resources :programs

  devise_for :users

  get 'home/index'

  root 'home#index'
end
