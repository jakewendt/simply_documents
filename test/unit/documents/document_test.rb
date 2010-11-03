#require File.dirname(__FILE__) + '/../../test_helper'
require 'test_helper'

class SimplyDocuments::DocumentTest < ActiveSupport::TestCase

	assert_should_require(:title)
	assert_should_require_attribute_length(:title, :minimum => 4)
	assert_should_belong_to(:owner,:class_name => 'User')

	test "should create document" do
		assert_difference 'Document.count' do
			object = create_object
			assert !object.new_record?, 
				"#{object.errors.full_messages.to_sentence}"
		end
	end

end
