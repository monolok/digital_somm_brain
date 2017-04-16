class GrapesNoses < ActiveRecord::Migration[5.0]
  def change
    create_table :grapes_noses do |t|
      t.integer :grape_id
      t.integer :nose_id

      t.timestamps
    end   	
  end
end
