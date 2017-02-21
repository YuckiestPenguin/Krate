Rails.application.routes.draw do
  resources :rates
  resources :carrier_types
  resources :carriers
  resources :ports
  resources :countries
  resources :unit_of_measures
  resources :shipment_categories
  resources :shipment_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
