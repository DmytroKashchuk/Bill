Rails.application.routes.draw do
  get 'bills/new'

  resources :clients do
  	resources :bills, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
