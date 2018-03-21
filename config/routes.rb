Rails.application.routes.draw do
  get 'routes/index'

  get 'routes/show'

  root "artworks#index"

  get 'pictures/new'
  get 'pictures/show'
  get 'pictures/create'
  get 'pictures/destroy'


	
  devise_for :users
	resources :artworks
	resources :searches
  resources :routes
	resources :pictures do
    member do
      put "like", to: "pictures#upvote"
      put 'unlike', to: "pictures#downvote"
    end

  end


	get 'users/:id', to: "users#show", as: "user_profile"
  get 'artworks/show_small/:id', to: "artworks#show_small"
  get 'artworks/new/:lat/:long', to: "arwtorks#new"
 
end