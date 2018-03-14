Rails.application.routes.draw do

  get 'user_courses/index'

  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/signup", to: "users#new"
  resources :users do
    resources :user_courses, as: "courses"
  end
end
