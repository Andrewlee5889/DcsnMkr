class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true
  validates :yes_votes, presence: true
  validates :no_votes, presence:true
end

#<% result = Post.order("updated_at DESC").limit(5) %>