Rails.application.routes.draw do
  root 'users#index'
  resources :users do
    resources :tasks
  end
end
