Rails.application.routes.draw do
	get '/products', to: 'products#index'
	get '/products/new', to:'products#new'
	post '/products', to: 'products#create'
	get '/products/:id/edit', to:'products#edit', as: 'edit_product'
	get '/products/:id' => 'products#show', as: 'product'
	patch '/products/:id', to: 'products#update'
 	put '/products/:id', to: 'products#update'
 	delete '/products/:id', to: 'products#delete'
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  	# resources :products, only:[:index, :new, :create, :edit, :show, :update, :destroy]
  	# resources :products, except:[:index, :new, :edit, :show]
  	# get 'imprimir_factura/:id' => 'products#index', as: 'imprimir'  # <%= link_to 'imprimir' imprimir_path(@product) %>
end
