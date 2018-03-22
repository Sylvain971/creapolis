Rails.application.routes.draw do
  get 'routes/index'

  get 'routes/show'

  root "artworks#index"

  get 'pictures/new'
  get 'pictures/show'
  get 'pictures/create'
  get 'pictures/destroy'



  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
	resources :artworks
	resources :searches
  resources :routes
	resources :pictures do
    member do
      put "like", to: "pictures#upvote"
      put 'unlike', to: "pictures#downvote"
    end

  end

	get 'admin', to: "admin#adminboard", as: "admin"
  get 'admin/artwork-moderation', to: "admin#artwork_moderation", as: "art_moderation"
  get 'admin/new-pictures-moderation', to: "admin#new_pictures_moderation", as: "new_pic_moderation"
  get 'admin/signaled-pictures-moderation', to: "admin#signaled_pictures_moderation", as: "signaled_pic_moderation"

	get 'users/:id', to: "users#show", as: "user_profile"
  get 'artworks/show_small/:id', to: "artworks#show_small"
  get 'artworks/new/:lat/:long', to: "arwtorks#new"

end
