Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'my_listings', to: 'listings#my_listings'

  resources :listings do
    resources :booking, only: %i[new create]
  end

  resources :bookings, only: %i[index show edit update destroy]
end
