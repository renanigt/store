Rails.application.routes.draw do
  resources :categories

  get "products/search" => "products#search", as: :search_product
  resources :products

  get "shops/search" => "shops#search", as: :search_shop
  resources :shops
end
