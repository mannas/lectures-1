class LecturersController < ApplicationController
	def get 
		@lecturers = Lecturer.all
		@lecturer = Lecturer.new
	end

	def post
		first = params[:lecturer][:firstname]
		last = params[:lecturer][:lastname]
		Lecturer.new(:firstname=> first,:lastname=> last).save
		redirect_to lecturers_path
	end

	def delete
		Lecturer.find(params[:id]).destroy
		redirect_to lecturers_path
	end

	def edit
		@lecturers = Lecturer.all
		@lecturer = Lecturer.find(params[:id])
		render :get
	end

	def patch
		lecturer = Lecturer.find(params[:id])
		lecturer.firstname = params[:lecturer][:firstname]
		lecturer.lastname = params[:lecturer][:lastname]
		lecturer.save
		redirect_to lecturers_path
	end
end