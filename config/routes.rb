Rails.application.routes.draw do
  root "artworks#index"

  get 'pictures/new'
  get 'pictures/show'
  get 'pictures/create'
  get 'pictures/destroy'

  devise_for :users
	resources :artworks
	resources :pictures do
    member do
      put "like", to: "pictures#upvote"
      put 'unlike', to: "pictures#downvote"
    end

  end


	get 'users/:id', to: "users#show", as: "user_profile"
  get 'artworks/show_small/:id', to: "artworks#show_small"
  get 'artworks/new/:lat/:long', to: "arwtorks#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
