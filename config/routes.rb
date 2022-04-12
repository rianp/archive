Rails.application.routes.draw do
  resources :uploads
  root 'pages#landing'
  get 'browse', to: 'uploads#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'resources', to: 'pages#resources'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
