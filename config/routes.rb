Rails.application.routes.draw do
  root 'messages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :messages, only: [:index]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
