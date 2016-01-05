class CreateChat < ActiveRecord::Migration[5.0]
  def change
    create_table :chats do |t|
      t.integer :deck_id
      t.text :message
      t.timestamps
    end
  end
end
