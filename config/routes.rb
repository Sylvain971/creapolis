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
  get 'artworks/show_small/:id', to: "artworks#show_small"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
