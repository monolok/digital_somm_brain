class GrapesSights < ActiveRecord::Migration[5.0]
  def change
    create_table :grapes_sights do |t|
      t.integer :grape_id
      t.integer :sight_id

      t.timestamps
    end   	
  end
end
