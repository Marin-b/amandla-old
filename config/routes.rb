Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :places
  get 'offline', to: 'pages#offline', as: :offline

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
