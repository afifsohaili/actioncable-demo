class AddCurrentSlideToDeck < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :current_slide_position, :integer, default: 1
  end
end
