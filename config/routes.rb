# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#index'

  # Setup user routes
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
