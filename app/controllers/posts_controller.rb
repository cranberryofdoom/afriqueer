class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
        @post = Post.new(post_params)

        if @post.save
            render "success"            
        end
    end

    def show
        @post = Post.find_by_id(params[:id])
    end

    private
    def post_params
    params.require(:post).permit(:title, :markdown_content, :author)
  end
end