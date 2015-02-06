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

	def show
		@videolink = Videolink.find(params[:id])
	end

	def destroy
		@videolink = Videolink.find(params[:id])
		@videolink.destroy
		redirect_to root_path
	end

	def edit
		@videolink = Videolink.find(params[:id])
	end

	def update
		@videolink = Videolink.find(params[:id])
		@videolink.update_attributes(videolinks_params)
		redirect_to videolink_path(@videolink)
	end

	private

	def videolinks_params
		params.require(:videolink).permit(:title, :link)
	end
end
