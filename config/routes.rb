Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'trips#index'
  resources :addresses 
  resources :trips do
  resources :locations 
  end
  

  
  
  
end
