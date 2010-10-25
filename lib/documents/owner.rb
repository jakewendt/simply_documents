module Documents::Owner
	def self.included(base)
		base.extend(PrepMethod)
	end
	module PrepMethod
		def document_owner(*args)
			options = args.extract_options!
			has_many :documents, :as => :owner
		end
	end
end
ActiveRecord::Base.send(:include,Documents::Owner)
