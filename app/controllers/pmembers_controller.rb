class PmembersController < ApplicationController
  
def index
  	@user = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
  def new
  	@user = User.new
  end
end
