class GrapesPalateStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :grapes_palate_structures do |t|
      t.integer :grape_id
      t.integer :palate_structure_id

      t.timestamps
    end  	
  end
end