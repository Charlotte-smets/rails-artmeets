Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  resources :artists, only: %i[index show new create] do
    resources :artworks, only: %i[index new create destroy show]
  end
  resources :gallerists do
    resources :favorites, only: %i[create]
  end
  get 'dashboard', to: 'pages#dashboard'
end
