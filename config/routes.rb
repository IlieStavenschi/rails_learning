Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'home', to: 'pages#home'

  # Defines the root path route ("/")
  # root "articles#index"
end
