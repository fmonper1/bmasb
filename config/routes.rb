Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :types
  resources :states
  resources :companies
  resources :shops
  resources :events do
      resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root :to => "events#index"

  authenticated :user do
    root 'events#index'
  end

  root "devise/sessions#new"

  get '/events/completados', to: 'events#scompletados'

end
