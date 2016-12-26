Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  
  resources :piro_first_calls
  root to: "home#index"

end