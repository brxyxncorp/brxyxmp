Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get '/about/', :to => 'static_pages#about'
  get '/price/', :to => 'static_pages#price'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
end
