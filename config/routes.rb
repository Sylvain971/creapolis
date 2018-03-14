Rails.application.routes.draw do
  get 'pictures/new'

  get 'pictures/show'

  get 'pictures/create'

  get 'pictures/destroy'

	resources :artworks
	resources :pictures
  devise_for :users
	root "artworks#index"
	get 'users/:id', to: "users#show", as: "user_profile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
