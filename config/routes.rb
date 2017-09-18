Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :types
  resources :states
  resources :companies
  resources :shops
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "events#index"
end
