Rails.application.routes.draw do
  get 'pages/home'
  resources :cocktails
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "cocktails#index"
  resources :cocktails, except: :index
end
