class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content, null: false
      t.bigint :author_id, null: false

      t.timestamps
    end

    add_reference :messages, :conversation, foreign_key: true, null: false
    add_foreign_key :messages, :users, column: :author_id
  end
end
