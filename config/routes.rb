Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  get 'relationships/create'
  get 'relationships/destroy'
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'toppages/index'

  root "toppages#index"

	get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

	get 'signup', to: 'users#new'
	resources :users, only: [:index,:show, :new, :create] do
	  member do
      get :followings
      get :followers

      get :likes
    end
	end

	resources :posts, only: [:show, :new, :edit, :create, :update, :destroy]

  resources :relationships, only: [:create, :destroy]

  resources :likes, only: [:create, :destroy]
end

