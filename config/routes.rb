Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # to index all tasks
  get "tasks", to: "tasks#index"
  # to create a new task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create", as: :task
  # to show one task
  get "tasks/:id", to: "tasks#show" 
  # to update a new task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # to destroy a task
  delete "tasks/:id", to: "tasks#destroy"
end
