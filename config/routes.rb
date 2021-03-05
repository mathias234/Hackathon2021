Rails.application.routes.draw do
  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  resources :users
  get 'login', to: 'login#index'
  get 'login/create'
  get 'profile', to: 'profile#show'
  get 'profile/create'
  get '/', to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
