# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  # Setup user routes
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' } do
    # get 'login', to: 'devise/sessions#new'
    # get 'register', to: 'devise/registrations#new'
  end
end
