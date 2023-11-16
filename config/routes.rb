Rails.application.routes.draw do
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]
  root to: 'lists#index'
end
