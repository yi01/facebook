Rails.application.routes.draw do
  root 'blogs#index'
  resources :blogs, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :contacts, only: [:new, :create]
end
