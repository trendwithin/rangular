Rails.application.routes.draw do
  root to: 'application#angular'

  resources :products, only: [:index, :create, :show]
end
