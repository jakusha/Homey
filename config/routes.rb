Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path rouroot "articles#index"te ("/")
  # root "articles#index"
  root "projects#index"
  
  resources :projects do
    resources :comments
  end
end
