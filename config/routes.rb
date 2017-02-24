Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
  get "/pages/:page" => "pages#index"
  resources :rates
  resources :carrier_types
  resources :carriers
  resources :ports
  resources :countries
  resources :unit_of_measures
  resources :shipment_categories
  resources :shipment_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#index", page: "index"
end
