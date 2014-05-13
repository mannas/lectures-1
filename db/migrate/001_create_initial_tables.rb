class CreateInitialTables < ActiveRecord::Migration
	def self.up
		create_table(:lecturers) do |t|
			t.string :lastname
			t.string :firstname
		end
	
		create_table(:lectures) do |t|
			t.string :title
		end

		create_table(:lecturers_lectures) do |t|
			t.integer :lecturer_id
			t.integer :lecture_id
		end
	end

	def self.down
		drop_table :lecturers
		drop_table :lectures
		drop_table :lecturers_lectures
	end
end