class CreateConversationUsers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :conversations, :users
  end
end
