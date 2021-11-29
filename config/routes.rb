Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :artists, only: %i[index show new create] do
    resources :artworks, only: %i[new create destroy]
  end
  resources :artworks, only: %i[index show] do
    member do
      get :dislike
    end
  end
  resources :gallerists, only: %i[index show new create] do
    member do
      post :like
      post :dislike
    end
  end
  resources :matches, only: %i[index show create]
  get 'dashboard', to: 'pages#dashboard'
end
