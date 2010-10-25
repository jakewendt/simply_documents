ActionController::Routing::Routes.draw do |map|
#	map.root :controller => "pages", :action => "show", :path => [""]

#	I need this route and I don't know why.
#	I expected that including the authorized gem
#	would have included it since I told it too?
#	The photos gem doesn't seem to need it.
#
#	map.resources :users, :only => [:destroy,:show,:index],
#		:collection => { :menu => :get } do |user|
#		user.resources :roles, :only => [:update,:destroy]
#	end
#
#	#	MUST BE LAST OR WILL BLOCK ALL OTHER ROUTES!
#	#	catch all route to manage admin created pages.
#	map.connect   '*path', :controller => 'pages', :action => 'show'


	map.resource :home, :only => :show
	map.root :controller => :home, :action => :show


end
