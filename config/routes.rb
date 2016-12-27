Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {:omniauth_callbacks => "users/omniauth_callbacks"} do
    resources :piro_first_calls
    resources :authorize_cremation_and_disposition
    resources :cremation_permits
    resources :designation_of_intention
    resources :written_statements
  end

  root to: "home#index"

  resources :piro_first_calls
  resources :authorize_cremation_and_disposition
  resources :cremation_permits
  resources :designation_of_intention
  resources :written_statements

end