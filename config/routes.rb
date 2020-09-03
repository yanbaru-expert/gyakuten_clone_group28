  Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :movies do
    resource :watched_movies, only: [:create, :destroy]
  end
  root "movies#index"
  resources :movies, only: [:index]
  resources :aws_texts, only: [:index, :show]
end
