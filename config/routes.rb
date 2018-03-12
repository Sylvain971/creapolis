Rails.application.routes.draw do

  get 'users/show'

  devise_for :users
	root "artworks#index"

  get 'artworks/index'
  get 'artworks/new'
  get 'artworks/create'
  get 'artworks/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
