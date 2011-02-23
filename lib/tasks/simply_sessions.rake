#	From `script/generate simply_sessions` ...
unless Gem.source_index.find_name('jakewendt-simply_sessions').empty?
	gem 'jakewendt-simply_sessions'
	require 'simply_sessions/test_tasks'
end
