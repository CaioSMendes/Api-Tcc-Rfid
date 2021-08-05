Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :categories
    resources :products
    resources :addresses
    resources :providers
    resources :clients
    resources :buys
    resources :sells
    resources :taxes
    resources :wallets
    resources :bluetoohsearches
  end
end
