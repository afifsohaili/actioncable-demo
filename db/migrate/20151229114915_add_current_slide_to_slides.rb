class AddCurrentSlideToSlides < ActiveRecord::Migration[5.0]
  def change
    add_column :slides, :current_slide, :boolean, default: false
  end
end
