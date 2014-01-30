class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
        @post = Post.new(post_params)

        if @post.save
            render 'main/submit',  :notice => "Your post was saved"
        else
            render "new"
        end
    end

    private
    def post_params
    params.require(:post).permit(:title, :content, :author)
  end
end