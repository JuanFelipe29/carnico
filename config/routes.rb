Rails.application.routes.draw do
  resources :cut_elaborateds
  resources :elaborated_product_names
  resources :mature_cuts
  resources :cuts
  resources :cut_names
  resources :pieces
  resources :piece_names
  resources :quarterings
  resources :channels
  resources :suppliers
  resources :families
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
