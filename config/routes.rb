Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles # creates ALL routes for articles
  resources :articles, only: [:show, :index, :new, :create, :edit, :update]
end
