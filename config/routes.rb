Rails.application.routes.draw do
  root to: 'pages#root'
  resources :restaurants
  resources :bottles
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
