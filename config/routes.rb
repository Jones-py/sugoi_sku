Rails.application.routes.draw do

  # match '/users/:id', to: 'users#show', via: 'get'
  # resources :users, :only =>[:show]
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'admin' => 'admin#index'

  resource   :user
  resources  :courses
  resources  :aplications
  resources  :comments
  resources  :instructors

  resources :courses, only: [:index, :show, :new, :create] do
   resources :comments, only: [:create, :destroy]
  end
  # devise_for :users,:controllers => { :new_user_registration => "users/registrations#new"}

  root 'homes#index'

end
