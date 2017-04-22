Rails.application.routes.draw do
  resources :products
  resources :users
  resources :product_images
  resources :product_prices
  resources :product_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
