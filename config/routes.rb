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

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get '/events/completados', to: 'events#scompletados'

end
