Rails.application.routes.draw do
  root to: 'posts#index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'


  get 'posts/menu'

  get 'posts/index'
  post 'posts/index' => 'posts#create'

  get 'posts/new'
  post 'posts/index' => 'posts#create'

  get 'posts/:id' => 'posts#show'
  get 'posts/show'
  

  get 'posts/create'

  get 'users/new'
  post 'users/new' => 'users#create'

  get 'users/show'

  get 'users/create'

  get 'users/edit'

  get     'login', to: 'sessions#new'
  post    'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
