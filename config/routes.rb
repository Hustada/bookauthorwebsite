Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  get '/about' => 'static_pages#about'
  get '/author' => 'static_pages#author'
  get '/contact' => 'static_pages#contact'
  get '/book' => 'static_pages#book'
end