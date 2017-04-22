Rails.application.routes.draw do

  resources :sale_details
  resources :sales
  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :products
        resources :users
        resources :product_images
        resources :product_prices
        resources :product_categories
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
