Rails.application.routes.draw do
  devise_for :users
  get 'prototypes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :prototypes do
    resources :comments, only: :create
  end

  resources :users, only: :show
  # Defines the root path route ("/")
  # root "articles#index"
  root to: "prototypes#index"
  
  # devise_scope :user do
    # get '/users/sign_out' => 'devise/sessions#destroy'
  # end
end
