Factory.define :document do |f|
	f.sequence(:title) { |n| "Title#{n}" }
#	f.sequence(:document_file_name) { |n| "document_file_name#{n}" }
end
