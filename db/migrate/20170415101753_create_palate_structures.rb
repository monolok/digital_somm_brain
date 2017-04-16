class CreatePalateStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :palate_structures do |t|
      t.text :body
      t.text :alcohol
	  t.text :acid
	  t.text :tannin
      
      t.timestamps
    end
  end
end
