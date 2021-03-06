Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'movies#index'
  resources :movies, only: [:index, :show, :new, :create ] do
    resources :lists, only: [ :new, :create]
  end

  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  
  resources :movies, only: :destroy
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
