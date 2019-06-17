class Conversation < ApplicationRecord
  has_many :conversations_users
  has_many :participants, through: :conversations_users, source: :user
  has_many :messages

  # TODO: remove description column
end
