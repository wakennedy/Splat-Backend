Rails.application.routes.draw do
  resources :user_tasks
  resources :tasks, only: [:index, :show, :create, :destroy]
  resources :users

  post '/auth', to: 'auth#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
