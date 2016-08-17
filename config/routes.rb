Rails.application.routes.draw do
  resources :posts
  root "posts#index"
  get '/like/:id', to: 'posts#like'
  get "/terms_of_use", to: "posts#terms_of_use"
end
