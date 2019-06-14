class Message < ApplicationRecord
  validates :author_id, presence: true
  validates :conversation_id, presence: true
  validates :content, presence: true
end
