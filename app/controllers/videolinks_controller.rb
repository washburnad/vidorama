class VideolinksController < ApplicationController

	def index
		@videolinks = Videolink.all
	end

	def new
		@videolink = Videolink.new
	end

	def create
		@videolink = Videolink.create(videolinks_params)
		if @videolink.valid?
			redirect_to root_path
		else
			render :new, :status => :unprocessable_entity
		end
	end


	private

	def videolinks_params
		params.require(:videolink).permit(:title, :link)
	end
end
