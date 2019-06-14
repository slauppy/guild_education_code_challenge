require 'rails_helper'

RSpec.describe Message, type: :model do
  it { is_expected.to validate_presence_of(:author_id) }
  it { is_expected.to validate_presence_of(:conversation_id) }
  it { is_expected.to validate_presence_of(:content) }
end
