Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :kinds
  resources :contacts do
    resource :kind, only: [:show]
    resource :kind, only: [:show], path: "relationships/kind"

    resource :phones, only: [:show]
    resource :phones, only: [:show], path: "relationships/phones"

    resource :phone, only: [:update, :create, :destroy]
    resource :phone, only: [:update, :create, :destroy], path: "relationships/phones"

    resource :address, only: [:show, :update, :create, :destroy]
    resource :address, only: [:show, :update, :create, :destroy], path: "relationships/address"
  end

  resources :auths, only: [:create]
end
