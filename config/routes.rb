Rails.application.routes.draw do
  get "channel/index" => "channel#index"
  get "channel/new" => "channel#new"
  post "channel/create" => "channel/create"

  get "chats/:id" => "chats#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
