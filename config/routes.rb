Rails.application.routes.draw do
  resources :requests
  resources :suits
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
