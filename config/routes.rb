Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  root to: 'home#top'
  get 'books/search'
  resources :books, only: [:create, :show, :update, :destroy] 
  resources :users, only: :show 
end
