class AddGrapeIdToPalateFlavors < ActiveRecord::Migration[5.0]
  def change
    add_column :palate_flavors, :grape_id, :integer
  end
end
