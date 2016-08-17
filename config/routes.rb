Rails.application.routes.draw do
  resources :posts
  root "posts#index"
  get '/like/:id', to: 'posts#like'
end
