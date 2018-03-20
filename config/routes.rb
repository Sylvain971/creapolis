Rails.application.routes.draw do
  get 'pictures/new'

  get 'pictures/show'

  get 'pictures/create'

  get 'pictures/destroy'

	resources :artworks
	resources :pictures
	resources :searches
  devise_for :users
	root "artworks#index"
	get 'users/:id', to: "users#show", as: "user_profile"
  get 'artworks/show_small/:id', to: "artworks#show_small"
  get 'artworks/new/:lat/:long', to: "arwtorks#new"
 
end