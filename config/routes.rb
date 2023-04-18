Rails.application.routes.draw do
  resources :vazis
  resources :atamen
  resources :pochers
  resources :poches
  resources :projects do
    resources :poches
    resources :atamen, only: %i[index]
    resources :vazis
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "projects#index"
end
