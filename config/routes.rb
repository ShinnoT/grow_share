
Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'items#index'
  resources :items, only: [:show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
