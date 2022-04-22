Rails.application.routes.draw do
  get '/users', to: 'users#index'
  
  get '/users/register', to: 'users#new'
  post '/users/register', to: 'users#create'
end
