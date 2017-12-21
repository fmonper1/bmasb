Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :types
  resources :shops

  resources :states
  resources :companies
  resources :events do
    resources :shops

    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root :to => "events#index"

  authenticated :user do
    root 'events#index', as: :authenticated_root
  end
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  root 'devise/sessions#new'

  get '/events/completados', to: 'events#scompletados'

end
