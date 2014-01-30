class MainController < ApplicationController
	def submit
		@post = Post.new
	end
	def home
		@truncate = true
	end
end
