require 'rails_helper'

RSpec.describe ConversationsUser, type: :model do
  it { is_expected.to validate_presence_of(:conversation_id) }
  it { is_expected.to validate_presence_of(:user_id) }
end
