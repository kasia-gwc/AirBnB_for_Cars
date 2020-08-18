Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :listings do
    resources :booking, only: %i[new create]
    resources :user, only: :show
  end
  resources :bookings, only: %i[index show edit update destroy] do
    resources :user, only: :show
  end
end
