class RemoveTextBodyImageFromSlides < ActiveRecord::Migration[5.0]
  def change
    remove_column :slides, :title, :string
    remove_column :slides, :body, :text
    remove_column :slides, :image, :text
  end
end
