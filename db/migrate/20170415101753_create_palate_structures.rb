class CreatePalateStructures < ActiveRecord::Migration[5.0]
  def change
    create_table :palate_structures do |t|
      t.text :sweetness
      t.text :phenolic
      t.text :body
      t.text :alcohol
	  t.text :acid
	  t.text :tannin
	  t.text :texture
	  t.text :balance
	  t.text :length
	  t.text :complexity
      
      t.timestamps
    end
  end
end
