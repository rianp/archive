Rails.application.routes.draw do
  devise_for :users
  resources :uploads
  root 'pages#landing'
  get 'archive', to: 'uploads#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'resources', to: 'pages#resources'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
