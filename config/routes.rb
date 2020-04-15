Rails.application.routes.draw do
  resources :channel, only: [:index, :new, :create]

  get "chats/:id" => "chats#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
