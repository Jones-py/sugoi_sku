Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'admin' => 'admin#index'
  resources  :courses
  resources  :aplications
  resources  :comments
  resources  :courses do
    resources :comments
  end

  # devise_for :users,:controllers => { :new_user_registration => "users/registrations#new"}

  root 'homes#index'

end
