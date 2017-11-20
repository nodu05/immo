Rails.application.routes.draw do
  get 'admin/dashboad'
  get 'admin', to:'admin#dashboad'  

  namespace :admin do
    resources :staffs
  end
  namespace :admin do
    resources :companies
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
