Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :users, only: [:create]
    resources :articles, only: [:index, :create, :update]
    resources :user_articles, only: [:index, :create, :update]
    resources :sources, only: [:index, :create, :update]
    post '/login', to: 'sessions#create', as: 'login' 

  end

end
