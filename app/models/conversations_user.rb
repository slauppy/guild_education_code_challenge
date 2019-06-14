class ConversationsUser < ApplicationRecord
  validates :conversation_id, presence: true
  validates :user_id, presence: true
end
