class VideosController < ApplicationController
	def index
		@videos = Video.all
	end

	def show
		@video = Video.find(params[:id])
	end

	def new
		@videos = Video.all
	end

	def create
		@video = Video.new(video_params)

		@video.save
		redirect_to @video
	end

	private
		def video_params
			params.require(:video).permit(:title, :text)
		end



end
