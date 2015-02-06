class VideolinksController < ApplicationController

	def index
		@videolinks = Videolink.all
	end

	def new
		@videolink = new Videolink
	end
end
