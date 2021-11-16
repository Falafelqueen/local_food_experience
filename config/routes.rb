Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # define app root path
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # define experience actions
  resources :experiences, only: %i[index new create show]

end
