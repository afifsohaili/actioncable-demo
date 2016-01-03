class DropCurrentSlideFromSlides < ActiveRecord::Migration[5.0]
  def change
    remove_column :slides, :current_slide, :boolean, default: false
  end
end
