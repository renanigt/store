Rails.application.routes.draw do
  resources :categories

  resources :products

  get "shops/search" => "shops#search", as: :search_shop
  resources :shops
end
