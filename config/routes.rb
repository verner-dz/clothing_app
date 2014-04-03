ClothingApp::Application.routes.draw do

  get '/login', to: "sessions#new"
  post '/sessions', to: "sessions#create"

  get '/logout', to: "sessions#destroy"
  get '/users/:id/checkout', to: "users#checkout"

  get '/users/:id/cart', to: "users#cart"

  root to: "pages#index"

  resources :suppliers, shallow: true do
    resources :products
  end

  resources :users do
    resources :purchases
  end



end


