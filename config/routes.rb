Rails.application.routes.draw do
	devise_for :users, controllers: { registrations: 'users/registrations' }
	resources :users, only: [:index, :show]
	devise_scope :user do
		get 'logout', to: "devise/sessions#destroy", as: "logout"
		get 'login', to: "devise/sessions#new", as: "login"

		get 'user/edit', to: "registrations#edit", as: "edit_user"
	end

	resources :posts, path: '/blog/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'static_pages#home'

	get '/blogs/', :to => 'static_pages#blog'

	get 'contact', to: 'messages#new', as: 'contact'
	post 'contact', to: 'messages#create'
end
