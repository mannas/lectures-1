class Lecturer < ActiveRecord::Base
	has_and_belongs_to_many :lectures
end