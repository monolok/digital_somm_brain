class AddGrapeIdToSights < ActiveRecord::Migration[5.0]
  def change
    add_column :sights, :grape_id, :integer
  end
end
