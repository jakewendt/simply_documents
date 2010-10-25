class PolymorphicizeDocumentOwner < ActiveRecord::Migration
	def self.up
		add_column :documents, :owner_type, :string
		remove_index :documents, :owner_id
		add_index :documents, [:owner_id,:owner_type]
	end

	def self.down
		remove_index :documents, [:owner_id,:owner_type]
		add_index :documents, :owner_id
		remove_column :documents, :owner_type_string
	end
end
