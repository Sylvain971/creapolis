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
  get 'admin/artworkmoderation', to: "admin#artworkmoderation", as: "art_moderation"
  get 'admin/newpicturesmoderation', to: "admin#newpicturesmoderation", as: "new_pic_moderation"
  get 'admin/signaledpicturesmoderation', to: "admin#signaledpicturesmoderation", as: "signaled_pic_moderation"

	get 'users/:id', to: "users#show", as: "user_profile"
  get 'artworks/show_small/:id', to: "artworks#show_small"
  get 'artworks/new/:lat/:long', to: "arwtorks#new"

end
