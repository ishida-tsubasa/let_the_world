Rails.application.routes.draw do
  root to: 'channels#index'

  resources :channels, only: [:index, :new, :create] do
    resources :chats
  end
  resources :chats
  # get "chats/:id" => "chats#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
