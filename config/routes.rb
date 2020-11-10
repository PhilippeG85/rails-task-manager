Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#show', as: :task_id
  post '/tasks/new', to: 'tasks#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
