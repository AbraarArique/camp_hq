Rails.application.routes.draw do
  root 'pages#index'
  resources :users, except: :index
  resources :tasks, except: :index
  post '/users/:id/tasks/', to: 'users#tasks', as: 'assign_task'
  post '/tasks/:id/users/', to: 'tasks#users', as: 'assign_user'
end
