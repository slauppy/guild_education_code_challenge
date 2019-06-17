class User < ApplicationRecord
  has_many :conversations_users
  has_many :conversations, through: :conversations_users

  validates :user_name, presence: true
end
