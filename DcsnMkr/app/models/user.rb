class User < ActiveRecord::Base
  has_many :posts
  default_scope -> { order('created_at DESC') }
  validates :username, presence: true
end