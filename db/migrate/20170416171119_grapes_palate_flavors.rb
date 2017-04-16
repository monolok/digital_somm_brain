class GrapesPalateFlavors < ActiveRecord::Migration[5.0]
  def change
    create_table :grapes_palate_flavors do |t|
      t.integer :grape_id
      t.integer :palate_flavor_id

      t.timestamps
    end   	
  end
end
