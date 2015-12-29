class CreateSlides < ActiveRecord::Migration[5.0]
  def change
    create_table :slides do |t|
      t.references :deck
      t.string :title
      t.text :body
      t.text :image
      t.integer :position
    end
  end
end
