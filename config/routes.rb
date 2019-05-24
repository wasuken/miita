Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  root to: 'items#index'
  get '/', to: 'items#index'
  get 'items/index'
  get 'items/new'
  post 'items/create'
  get 'items/show/:id', to: 'items#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
