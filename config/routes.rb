Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :properties
  end
  namespace :admin do
    resources :property_details
  end
  namespace :admin do
    resources :property_layouts
  end
  namespace :admin do
    resources :property_traffics
  end
  namespace :admin do
    resources :property_areas
  end
  namespace :admin do
    resources :property_adresses
  end
  namespace :admin do
    resources :property_infos
  end
  namespace :admin do
    resources :selects
  end
  namespace :admin do
    resources :customers
  end

  namespace :admin do
    resources :staffs
  end
  namespace :admin do
    resources :companies
  end
 

  get 'admin/dashboard'
  get 'admin', to:'admin#dashboard'
  get 'homeloan/index'
  get 'homeloan/simulator', to: 'homeloan#view'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
