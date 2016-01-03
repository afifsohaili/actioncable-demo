class AddPartialNameToSlides < ActiveRecord::Migration[5.0]
  def change
    add_column :slides, :partial_name, :string, after: :deck_id
  end
end
