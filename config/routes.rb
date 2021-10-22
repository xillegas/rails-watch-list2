Rails.application.routes.draw do
  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :list_bookmarks
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: :create_bookmarks
  # delete 'bookmarks/:id', to: 'bookmarks#delete'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "lists", to: 'lists#index'
  # get "lists/new", to: 'lists#new'
  # post "lists", to: 'lists#create'
  # get "lists/:id", to: 'lists#show', as: :list

  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy
end
