class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string :title
      t.string :slug, index: true
    end
  end
end
