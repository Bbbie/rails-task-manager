Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1 view all
  get 'tasks', to: 'tasks#index'

  # 2 create new task
  # GET the form
  get 'tasks/new', to: 'tasks#new'
  # POST the input
  post 'tasks', to: 'tasks#create'

  # 3 view one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # 4 edit a task
  # GET the form (pre-filled) for editing
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  # PATCH the parameters (update what was changes only)
  patch 'tasks/:id', to: 'tasks#update'

  # 5 delete a task

end
