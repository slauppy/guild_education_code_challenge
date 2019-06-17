# TODO: rename to ConversationUser
class ConversationsUser < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates :conversation_id, presence: true
  validates :user_id, presence: true
end
