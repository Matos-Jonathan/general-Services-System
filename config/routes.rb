Rails.application.routes.draw do
  resources :servicos
  resources :trabalhadors
  resources :clientes
  resources :enderecos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "index#index"
end
