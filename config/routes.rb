Rails.application.routes.draw do
  authenticated :user, ->(user) { user.admin? } do
    get 'admin', to: 'admin#index'
    get 'admin/uploads'
    get 'admin/users'
    get 'admin/show_upload'
  end

  root 'pages#landing'

  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

  resources :uploads
  
  get 'archive', to: 'uploads#index'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'resources', to: 'pages#resources'
end
