Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks"} do 
    resources :piro_first_calls
  end

  root to: "home#index"

end