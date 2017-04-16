class AddTanninToPalateStructures < ActiveRecord::Migration[5.0]
  def change
    add_column :palate_structures, :tannin, :integer
  end
end
