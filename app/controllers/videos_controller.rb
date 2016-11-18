class VideosController < ApplicationController
	def index
	end

	def create
		@video = Video.new(params[:article])

		@video.save
		redirect_to @video
	end
end
