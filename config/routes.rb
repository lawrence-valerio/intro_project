Rails.application.routes.draw do
  root to: 'home#index'
  resources :games, only: %i[index show]
  resources :about
  resources :genres, only: %i[index show]
  resources :publishers, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
