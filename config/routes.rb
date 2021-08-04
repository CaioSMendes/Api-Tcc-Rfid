Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :categories
    resources :products
    resources :addresses
    resources :providers
    resources :clients
    resources :buys
    resources :sells
    resources :taxes
    resources :wallets
  end
end
