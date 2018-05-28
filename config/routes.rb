Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # to index all tasks
  get "tasks", to: "tasks#index"
  # to show one task
  get "tasks/:id", to: "tasks#show" 
  # to create a new task
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  # to update a new task
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  # to destroy a task
  delete "tasks/:id", to: "tasks#destroy"
end
