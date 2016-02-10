Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  resources :posts
  root 'static_pages#new_home'

  get '/home' =>  'static_pages#home'
  get '/about' => 'static_pages#about'
  get '/author' => 'static_pages#author'
  get '/contact' => 'static_pages#contact'
  get '/book' => 'static_pages#book'
  get '/signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :posts do
    resources :comments
  end
end