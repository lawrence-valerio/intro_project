Rails.application.routes.draw do
  get 'home/index'
  root to: 'home#index'
  resources :games, only: %i[index show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
