Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :courses, only: %i[index new edit create update destroy show]

  # Defines the root path route ("/")
  # root "articles#index"
end
