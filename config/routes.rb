Rails.application.routes.draw do
  get 'admin/dashboard'
  get 'admin', to:'admin#dashboard'  

  namespace :admin do
    resources :staffs
  end
  namespace :admin do
    resources :companies
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
