class FeedController < ApplicationController
  def index
  	@posts = Post.order("created_at desc").where(user_id: current_user.following)
  end

  def show
  end
end
