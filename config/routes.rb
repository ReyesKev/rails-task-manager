Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  get "task/:edit", to: "task#edit", as: :edit_task
  get "task/:id", to: "task#update"
  get "tasks/:id", to: "tasks#show", as: :task
  # Defines the root path route ("/")
  # root "articles#index"
end
