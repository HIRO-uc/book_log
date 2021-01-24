Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'books/search'
  resources :books, only: [:create, :show, :update, :destroy] 
  resources :users, only: :show 
end
