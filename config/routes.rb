Rails.application.routes.draw do

  resources :names
  resources :employees, only:[:index,:show]
  
  devise_for :users
  resources :customer_services
  
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "employees#index"

  
  root to: "employees#index"
  resources :employees
  resources :services
  
  resources :service_details

  resources :employees do
    resources :names
  end
end
