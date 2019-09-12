Rails.application.routes.draw do
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'fusion/index'

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:create]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
  end
end
