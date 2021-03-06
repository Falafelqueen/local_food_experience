Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # define app root path
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  # define experience actions
  resources :experiences, only: %i[index new create show edit update] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: [:show, :destroy, :update] do
    member do
      patch :change_status
    end
  end
  resource :dashboard, only: [:show]
end
