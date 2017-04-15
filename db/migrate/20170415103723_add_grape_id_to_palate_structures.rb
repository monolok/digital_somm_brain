class AddGrapeIdToPalateStructures < ActiveRecord::Migration[5.0]
  def change
    add_column :palate_structures, :grape_id, :integer
  end
end
