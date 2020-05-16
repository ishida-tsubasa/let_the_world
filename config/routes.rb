# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'channels#index'
  # , only: [:index, :new, :create] do
  resources :channels do
    resources :chats
  end
  resources :chats
  # get "chats/:id" => "chats#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
