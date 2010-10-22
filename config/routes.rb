ActionController::Routing::Routes.draw do |map|

	map.resources :documents, :member => { :preview => :get }

end
