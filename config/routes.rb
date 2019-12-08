Rails.application.routes.draw do
  resources :products do
    resources :comments
  end

  get 'login' => 'users#login'
  post 'login' => 'accessor#user_check'
  get 'register' => 'users#register'
  post 'register' => 'accessor#create_user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
