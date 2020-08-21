Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root "movies#index"
  resources :movies
  resources :aws_texts, only: :index
  get "aws_texts/:id" => "aws_texts#show"
end
