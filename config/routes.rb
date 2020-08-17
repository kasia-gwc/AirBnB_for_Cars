Rails.application.routes.draw do
  devise_for :users
  root to: 'listings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index edit show update]
end
