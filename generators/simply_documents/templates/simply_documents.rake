#	From `script/generate simply_documents` ...
unless Gem.source_index.find_name('jakewendt-simply_documents').empty?
	gem 'jakewendt-simply_documents'
	require 'simply_documents'
	require 'simply_documents/test_tasks'
end
