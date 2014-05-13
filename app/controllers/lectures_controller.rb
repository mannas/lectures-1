class LecturesController < ApplicationController
	def get 
		@lectures = Lecture.all
		@lecture = Lecture.new
	end

	def post
		first = params[:lecture][:title]
		Lecture.new(:title=> first).save
		redirect_to lectures_path
	end

	def delete
		Lecture.find(params[:id]).destroy
		redirect_to lectures_path
	end

	def edit
		@lectures = Lecture.all
		@lecture = Lecture.find(params[:id])
		render :get
	end

	def patch
		lecture = Lecture.find(params[:id])
		lecture.title = params[:lecture][:title]
		lecture.save
		redirect_to lectures_path
	end
end