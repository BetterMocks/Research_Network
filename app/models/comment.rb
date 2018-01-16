class Comment < ActiveRecord::Base
	 include PublicActivity::Common
	 attr_accessor :body, :name

  belongs_to :post
end
