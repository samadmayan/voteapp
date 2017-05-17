Rails.application.routes.draw do
  devise_for :users
	resources :polls do
		get 'results', on: :member
		post 'count', on: :member
	end
	root 'polls#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
