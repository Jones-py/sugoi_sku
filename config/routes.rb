Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources  :courses
  resources  :aplications
  resources  :comments
  resources  :courses do
    resources :comments
  end

  devise_for :users,:controllers => { :new_user_registration => "users/registrations#new"}
  root 'homes#index'

end
