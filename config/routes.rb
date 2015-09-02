Rails.application.routes.draw do
  get 'users/new'

  resources :posts
  root 'posts#index'

  get '/about' => 'static_pages#about'
  get '/author' => 'static_pages#author'
  get '/contact' => 'static_pages#contact'
  get '/book' => 'static_pages#book'
  get '/signup' => 'users#new'

  resources :users

  resources :posts do
    resources :comments
  end
end