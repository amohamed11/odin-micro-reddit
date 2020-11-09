class User < ApplicationRecord
  has_many :posts, class_name: 'Post'
  has_many :comments, class_name: 'Comment'

  validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 }
end
