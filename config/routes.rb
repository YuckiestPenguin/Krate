Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :rates do
    collection { post :import}

  end

  resources :carrier_types do
    collection { post :import}
  end
  resources :carriers do
    collection  { post :import}
  end
  resources :ports do
    collection { post :import}
  end
  resources :countries do
    collection { post :import}

  end
  resources :unit_of_measures do
    collection { post :import}
  end
  resources :shipment_categories do
    collection { post :import}
  end
  resources :shipment_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  root "pages#index", page: "index"
  # get "/pages/:page" => "pages#index"
  get "/pages/documentation", page: "documentation"
  get "/pages/import", page: "import"
  get "/pages/restricted_access", page: "restricted_access"

end
