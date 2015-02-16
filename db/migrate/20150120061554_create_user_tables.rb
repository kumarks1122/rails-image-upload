class CreateUserTables < ActiveRecord::Migration
	def up
		create_table :user_tables do |t|
			t.string "name",:limit=>100			
		end		
	end
	def down
		drop_table :user_tables
	end
end
