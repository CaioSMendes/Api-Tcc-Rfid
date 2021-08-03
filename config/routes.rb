Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :categories
    resources :products
    resources :addresses
    resources :providers
    resources :clients
  end
end
