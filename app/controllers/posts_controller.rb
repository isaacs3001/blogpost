class PostsController < ApplicationController
    def show
    end

    def create
        @post = Post.new(post_params)

        if @post.save
          redirect_to posts_path, notice: "Post saved sucessfully"

        else

            render :new
        end
    end

    def new
        @post=Post.new
    end


    def index
        @posts = Post.all
    end



    private


    def post_params
      params.require(:post).permit(:title, :body)
    end
end
