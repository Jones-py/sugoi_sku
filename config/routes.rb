Rails.application.routes.draw do
  get 'course_applications/index'
  get 'course_applications/new'
  get 'course_applications/edit'
  get 'courses/index'
  get 'courses/new'
  get 'courses/edit'
  devise_for :users
  
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
