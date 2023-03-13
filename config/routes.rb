Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'home', to: 'pages#home'

  # Defines the root path route ("/")
  # root "articles#index"
end
