Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #list all tasks
  get '/tasks', to: 'tasks#index'

  #create new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  #show a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  #update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  #delete a task
  delete 'tasks/:id/delete', to: 'tasks#destroy', as: 'delete_task'


end
# DELETE + SHOW same path
