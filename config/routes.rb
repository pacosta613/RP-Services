Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {:omniauth_callbacks => "users/omniauth_callbacks"} do
    resources :piro_first_calls
    resources :authorize_cremation_and_dispositions
    resources :cremation_permits
    resources :designation_of_intentions
    resources :written_statements
  end

  root to: "home#index"

  resources :piro_first_calls
  resources :authorize_cremation_and_dispositions
  resources :cremation_permits
  resources :designation_of_intentions
  resources :written_statements

end