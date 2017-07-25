Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: :create
  get "signup" => "users#new"
  
  resource :user_session, only: :create
  get "login" => "user_sessions#new"
  delete "logout" => "user_sessions#destroy"
  
end
