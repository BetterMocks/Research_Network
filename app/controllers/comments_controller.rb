class CommentsController < ApplicationController
	skip_before_action :verify_authenticity_token
def create
	@post = Post.find(params[:post_id])
	 @comment.create_activity :create, owner: current_user
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    redirect_to post_path(@post)
end
def index
end

def destroy
	@post = Post.find(params[:post_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	redirect_to post_path(@post)
    end

    def show
    end
end
