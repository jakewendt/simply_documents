#	Needed for Paperclip gem 2.3.3
#	http://jira.codehaus.org/browse/JRUBY-3381
#	http://github.com/thoughtbot/paperclip/issues/issue/193
#	Errno::EACCES: Permission denied - /var/folders/kV/kV5XVPtqE9uZBCjn3z6vmk+++TM/-Tmp-/stream,19661,34729.pdf or /Users/jakewendt/github_repo/jakewendt/ucb_ccls_buffler/development/documents/2/edit_save_wireframe.pdf
#FileUtils.module_eval do
#  class << self
#    alias_method :built_in_mv, :mv
#
#    def mv(src, dest, options = {})
#      begin
#        built_in_mv(src, dest, options)
#      rescue Errno::EACCES
#        cp(src, dest)
#        rm(src)
#      end
#    end
#  end 
#end unless FileUtils.methods.include?('built_in_mv')
#
#	This code has now been included in Paperclip as per ...
#	https://github.com/thoughtbot/paperclip/commit/1ff1cc731a661addcd3c#diff-0
