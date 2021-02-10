Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # See all (List)
  get '/tasks', to: 'tasks#index'
  # Create a task
  get '/tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # See one (Show)
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # Update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch '/tasks/:id', to: 'tasks#update'
  # Delete a task
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy'
end
