class AddPalateStructuresIdToGrapes < ActiveRecord::Migration[5.0]
  def change
    add_column :grapes, :palate_structures_id, :integer
  end
end
