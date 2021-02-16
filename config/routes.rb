Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # 1 view all
  get 'tasks', to: 'tasks#index'

  # 2 create new task
  # get the form
  get 'tasks/new', to: 'tasks#new'
  # post the input
  post 'tasks', to: 'tasks#create'

  # 3 view one
  get 'task/:id', to: 'tasks#show', as: :task



end
