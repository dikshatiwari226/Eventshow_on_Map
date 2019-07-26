Rails.application.routes.draw do
  resources :event_maps
  
  resources :routers
  get 'home/index'
  get 'home/search'
  devise_for :users
	root to: "home#index"
end
