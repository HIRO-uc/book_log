Rails.application.routes.draw do
  get 'hello_world', to: 'hello_world#index'
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root to: 'home#top'
  get 'books/search'
  resources :books, only: [:create, :show, :update, :destroy] 
  resources :users, only: :show do
    resources :profiles, only: [:edit, :update]
  end
end
