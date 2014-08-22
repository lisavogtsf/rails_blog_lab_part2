Rails.application.routes.draw do

	root 'posts#index'

	resources :posts do
		resources :comments
	end

	get 'tags', to: 'tags#index'
	get 'tags/:id', to: 'tags#show'

	#get 'posts', to: 'posts#index'
	#get 'posts/new', to: 'posts#new'
	#get 'posts/:id', to: 'posts#show'
	#get 'posts/:id/edit', to: 'posts#edit'

	#post 'posts/create', to: 'posts#create'
	#delete 'posts/:id', to: 'posts#destroy'
	#put 'posts/:id', to: 'posts#update'



		# get '/posts', to: 'posts#index', as: 'posts'

		# get '/posts/new', to: 'posts#new', as: 'new_creature'

		# get '/posts/:id', to: 'posts#show', as: 'creature'

		# get '/posts/:id/edit', to: 'posts#edit', as: 'edit_creature'

		# post "/posts", to: "posts#create"

		# patch '/posts/:id', to: 'posts#update'

		# delete "/posts/:id", to: "posts#destroy"


end
