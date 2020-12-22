Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  resources :contracts
  resources :recipients
  recources :services
  resources :payments
end
