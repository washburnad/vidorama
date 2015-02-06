class PagesController < ApplicationController

	def index
		@videolinks = Videolink.all
	end

end
