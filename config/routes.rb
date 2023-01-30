Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "pages#index"
  resources :cocktails, only: %i[index show new edit update create destroy] do
    resources :bookings, only: %i[new create]
  end
end
