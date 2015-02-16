class CreateUsersTables < ActiveRecord::Migration
	def change
		create_table :users_tables do |t|
			t.string :firstname,:limit=> 100
			t.string :lastname,:limit=> 200
			t.string :rollno,:limit=> 100
			t.string :mobileno,:limit=> 20
			t.attachment :imagess
			t.timestamps null: false
		end
	end
end
