Rails.application.routes.draw do
	devise_for :users
	devise_scope :user do
		get '/users/sign_out' => 'devise/sessions#destroy'
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'static_pages#home'
	get '/about/', :to => 'static_pages#about'
	get '/blog/', :to => 'static_pages#blog'

	get 'contact', to: 'messages#new', as: 'contact'
	post 'contact', to: 'messages#create'
end
