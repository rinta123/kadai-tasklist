Rails.application.routes.draw do
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'tasks#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'


  get 'tasks/new', to: 'tasks#new'

  post 'tasks', to: 'tasks#create'
  
  
  delete 'tasks.:id', to: 'tasks#destroy'

  # index: show の補助ページ
  get 'tasks', to: 'tasks#index'

  # new: 新規作成用のフォームページ
  
  # edit: 更新用のフォームページ
  
  
  resources :tasks, only: [:show, :edit, :update, :destroy] 
  resources :users, only: [:index,  :create]

end

