class Lecture < ActiveRecord::Base
	has_and_belongs_to_many :lecturers
end