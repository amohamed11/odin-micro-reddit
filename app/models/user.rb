class User < ApplicationRecord
  has_many :posts, class_name: 'Post'

  validates :username, presence: true, uniqueness: true, length: { minimum: 2, maximum: 20 }
end
