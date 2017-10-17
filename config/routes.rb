Rails.application.routes.draw do
<<<<<<< HEAD
  # devise_for :users
  # root to: 'items#index'
  # resources :items, only: [:show, :new, :create, :edit, :update, :destroy] do
  #   resources :bookings, only: [:new, :create]
  # end
=======
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
>>>>>>> master
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
