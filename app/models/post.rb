class Post < ActiveRecord::Base
include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  attr_accessor :attachment, :attachment
  belongs_to :user
  mount_uploader :attachment, AvatarUploader
  validates :user_id, presence: true
  acts_as_votable
   has_many :comments, dependent: :destroy
end
