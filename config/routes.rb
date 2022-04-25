Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :courses do
    resources :subjects
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
