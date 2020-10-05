Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  post '/tweets/likes/:tweet_id/create', to: 'likes#create', as: :likes_create
  post '/tweets/likes/:tweet_id/destroy', to: 'likes#destroy', as: :likes_destroy
  post '/users/follows/:follower_id/create', to: 'follows#create', as: :follows_create
  post '/users/follows/:follower_id/destroy', to: 'follows#destroy', as: :follows_destroy

  get 'home/index' => 'home#index'
  resources :users
  resources :tweets do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
