Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  resources :posts
  root 'posts#index'

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

  resources :posts do
    resources :comments
  end
end