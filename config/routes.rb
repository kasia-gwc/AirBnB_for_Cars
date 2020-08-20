Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'my_listings', to: 'listings#my_listings'
  get 'my_listings/:id', to: 'listings#my_listings_show'
  get 'profile', to: 'users#display'
  get 'profile/settings', to:  'users#settings'

  resources :listings do
    resources :bookings, only: :create
  end

  resources :bookings, only: %i[index show edit update destroy]
end
