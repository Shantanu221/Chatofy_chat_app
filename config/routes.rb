Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  devise_for :users
  devise_scope :user do
    get 'users',to: "devise/sessions#new"
  end
  get 'user/:id',to: "users#show",as: 'user'
end
