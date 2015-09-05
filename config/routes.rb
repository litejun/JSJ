Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  root 'home#index'
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
