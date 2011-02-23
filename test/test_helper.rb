ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'test_help'

$LOAD_PATH.unshift File.dirname(__FILE__) # NEEDED for rake test:coverage

class ActiveSupport::TestCase

	fixtures :all

#	def login_as( user=nil )
#		uid = ( user.is_a?(User) ) ? user.uid : user
#		if !uid.blank?
#			@request.session[:uid] = uid
#			User.find_or_create_by_uid(uid)
#		end
#	end
#	alias :login :login_as
#	alias :log_in :login_as
#
#	def assert_redirected_to_login
#		assert_response :redirect
##		puts @response.inspect
#		assert_match "login", @response.redirected_to
##		assert_match "https://auth-test.berkeley.edu/cas/login",
##			@response.redirected_to
#	end
#
#	def assert_redirected_to_logout
#		assert_response :redirect
#		assert_match "logout", @response.redirected_to
##		assert_match "https://auth-test.berkeley.edu/cas/logout",
##			@response.redirected_to
#	end

end

class ActionController::TestCase

	setup :turn_https_on

end
