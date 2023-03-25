Rails.application.routes.draw do
  get 'messages/index'
  root to: "message#index"
end
