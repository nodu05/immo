Rails.application.routes.draw do
  resources :properties
  resources :customers
  resources :staffs
  resources :selects
  resources :companies
  # get 'admin/dashboard'
  # get 'admin', to:'admin#dashboard'
 
  get 'homeloan/index'
  get 'homeloan/simulator', to: 'homeloan#view'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
