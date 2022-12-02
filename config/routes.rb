Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[show] do
    get "dashboard", to: "pages#dashboard"

  end

  resources :tabs, only: %i[index show new create update]

  root to: "pages#home"


end
