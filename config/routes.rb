Rails.application.routes.draw do
  # get 'todos/restricted'
  # get 'todos/home'
  root to: 'todos#home'
  devise_for :users
end
