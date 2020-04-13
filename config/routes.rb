Rails.application.routes.draw do
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  #get 'toppages/index'

  root "toppages#index"

	get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

	get 'signup', to: 'users#new'
	resources :users, only: [:index,:show, :new, :create]

	resources :posts, only: [:show, :new, :edit, :create, :update, :destroy]

end
