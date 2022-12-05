Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[show] do
    get "dashboard", to: "pages#dashboard"
  end

  resources :tabs, only: %i[index show new create update]

  resources :drinks, only: [] do
    resources :tab_drinks, only: %i[create]
  end

  root to: "pages#home"
end

# link_to drinks_path(category: "beer")
