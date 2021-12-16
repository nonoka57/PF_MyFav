Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  resources :users, only: [:index, :show, :edit, :update] do
    resources :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followings' => 'relationships#followers', as: 'followers'
    resources :map, only: [:index]
  end
  
  resources :posts, only: [:create, :edit, :update, :destroy]
  resources :spots, only: [:index, :show ]

  resources :categories, only: [:index, :create, :edit, :update, :destroy]

  get '/search', to: 'searchs#search'


end
