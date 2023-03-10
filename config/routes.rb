Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] do
    resources :user_interests, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:show]
  root to: "cocktails#index"
  resources :cocktails, only: %i[index show new edit update create destroy] do
    resources :categories
  end

end
