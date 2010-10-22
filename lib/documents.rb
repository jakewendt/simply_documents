require 'ruby_extension'
require 'rails_helpers'
require 'authorized'
require 'gravatar'
require 'calnet_authenticated'
require 'acts_as_list'
module Documents
#	predefine namespace
end

#	This doesn't seem necessary
%w{models controllers}.each do |dir|
	path = File.expand_path(File.join(File.dirname(__FILE__), '../app', dir))
	ActiveSupport::Dependencies.autoload_paths << path
	ActiveSupport::Dependencies.autoload_once_paths << path
end

HTML::WhiteListSanitizer.allowed_attributes.merge(%w(
	id class style
))

if !defined?(RAILS_ENV) || RAILS_ENV == 'test'
	require 'active_support'
	require 'active_support/test_case'
	require 'factory_girl'
	require 'assert_this_and_that'
	require 'documents/factories'
	require 'documents/pending'
end

if RUBY_PLATFORM =~ /java/i
	require 'documents/file_utils_extension'
end

require 'paperclip'
if defined? ::Paperclip::Glue
	ActiveRecord::Base.send(:include, ::Paperclip::Glue)
else
	ActiveRecord::Base.send(:include, ::Paperclip)
end

ActionController::Routing::Routes.add_configuration_file(
	File.expand_path(
		File.join(
			File.dirname(__FILE__), '../config/routes.rb')))
