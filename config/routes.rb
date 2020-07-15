Rails.application.routes.draw do
  get 'dashboard/index'

  resources :lots

  resources :lots do
    resources :codes
  end
  get '/redeem/:id', to: 'codes#redeem', as: 'redeem'
  root 'dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
