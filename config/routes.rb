Rails.application.routes.draw do
  scope '/api', defaults: {format: :json} do
    resources :categories
    resources :products
  end
end
