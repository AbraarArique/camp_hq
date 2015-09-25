Rails.application.routes.draw do
  root 'pages#index'
  resources :users, except: :index
  resources :tasks, except: :index
  post 'users/:id/assign', to: 'users#assign', as: 'assign_task'
  delete 'users/:user_id/remove/:id', to: 'users#remove', as: 'remove_task'
  post 'tasks/:id/assign', to: 'tasks#assign', as: 'assign_user'
  delete 'tasks/:task_id/remove/:id', to: 'tasks#remove', as: 'remove_user'
end
