Rails.application.routes.draw do
  resources :users
  post '/login', to: 'auth#create'
  get '/users/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
