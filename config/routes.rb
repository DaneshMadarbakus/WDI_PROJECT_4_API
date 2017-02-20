Rails.application.routes.draw do
  resources :suits
  post 'register', to: 'authentications#register'
  post 'login', to: 'authentications#login'
end
