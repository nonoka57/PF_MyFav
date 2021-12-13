Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update] do
    resources :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followings' => 'relationships#followers', as: 'followers'
    resources :map, only: [:index]
  end


  resources :spots, only: [:index, :create, :show, :edit, :update, :destroy]

  resources :categories, only: [:index, :create, :edit, :update, :destroy]

  get '/search', to: 'searchs#search'




end
