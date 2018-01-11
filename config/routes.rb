Rails.application.routes.draw do

  root 'users#index'
  resources :users

  delete '/logout' => 'sessions#destroy', as: :logout
  resources :sessions, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
