Rails.application.routes.draw do
  resources :user_tasks
  resources :tasks, only: [:index, :show, :create]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
