class AddAlcoholToPalateStructures < ActiveRecord::Migration[5.0]
  def change
    add_column :palate_structures, :alcohol, :integer
  end
end
