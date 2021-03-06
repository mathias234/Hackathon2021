Rails.application.routes.draw do
  resources :events
  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  get 'login', to: 'login#index'
  get 'login/create'
  resources :profile
  get '/', to: 'events#index'
  get 'join_event', to: 'events#join_event'
  get 'leave_event', to: 'events#leave_event'
  post 'post_comment', to: 'events#post_comment'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
