Rails.application.routes.draw do
  resources :departments
  resources :employees
  devise_for :users
  root 'pages#home'
  get "/about", to: "pages#about"

end
