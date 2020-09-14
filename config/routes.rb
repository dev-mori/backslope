Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/show'
  resources :users
  resources :tweets do
    resources :comments, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
