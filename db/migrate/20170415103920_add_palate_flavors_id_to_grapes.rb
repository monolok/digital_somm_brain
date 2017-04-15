class AddPalateFlavorsIdToGrapes < ActiveRecord::Migration[5.0]
  def change
    add_column :grapes, :palate_flavors_id, :integer
  end
end
