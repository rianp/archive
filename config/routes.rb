Rails.application.routes.draw do

  authenticated :user, ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/uploads'
    get 'admin/users'
    get 'admin/show_upload'
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'users/profile'
  get '/u/:id', to: 'users#profile', as: 'user'

  get 'users/manage'

  resources :uploads
  resources :tags
  
  get 'search', to: 'search#index'
  get 'archive', to: 'uploads#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'resources', to: 'pages#resources'

  root 'pages#landing'
end
