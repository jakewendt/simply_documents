ActionController::Routing::Routes.draw do |map|

	map.resource :home, :only => :show
	map.root :controller => :home, :action => :show

#	map.logout 'logout', :controller => 'sessions', :action => 'destroy'
#	map.resource :session, :only => [ :destroy ]

end
