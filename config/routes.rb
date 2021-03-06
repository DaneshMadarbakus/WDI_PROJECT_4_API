Rails.application.routes.draw do
  resources :reviews
  resources :requests
  resources :suits
  get 'users' => 'users#index'
  get 'users/:id' => 'users#show'
  put 'users/:id' => 'users#update'
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
