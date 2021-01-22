Rails.application.routes.draw do
  devise_for :users
  root to: 'home#top'
  get 'books/search'
  resources :books, only: [:create, :show, :update] 
  resources :users, only: :show do
    get 'icon_edit'
  end
end
