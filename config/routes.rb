Rails.application.routes.draw do


  devise_for :users
  root  "users#index"
  resources :users
  resources :books do
  	member do
      get :show_only_author
      post :name_of_action
  	end
  	collection do
  		post :update_my_books
  	end
  end

  # match "/about", to: "users#index", via: [:get]

  get "/about", to: "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
