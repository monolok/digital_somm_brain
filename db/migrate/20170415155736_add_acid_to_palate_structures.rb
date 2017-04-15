class AddAcidToPalateStructures < ActiveRecord::Migration[5.0]
  def change
    add_column :palate_structures, :acid, :string
  end
end
