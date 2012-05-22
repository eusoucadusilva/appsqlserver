Appsqlserver::Application.routes.draw do
	resources :posts
	root :to => 'posts#index'
	match ':controller(/:action(/:id))(.:format)'
end
