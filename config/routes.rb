Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "message#index"
end
