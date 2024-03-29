Rails.application.routes.draw do
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
  resources :tags

end
