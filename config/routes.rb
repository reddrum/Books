Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :books do
    collection do
      get 'search'
    end
    resources :reviews
  end

  get '/contact', to: "books#contact"

  root 'books#index'

end
