Rails.application.routes.draw do
	root "concerts#index"
	resources :users, except: [:index, :update, :edit, :destroy]
	resources :sessions, only: [:new, :create, :destroy] 
	
	resources :concerts do
		resources :attendances
	end

end
