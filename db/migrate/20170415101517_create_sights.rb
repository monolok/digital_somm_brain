class CreateSights < ActiveRecord::Migration[5.0]
  def change
    create_table :sights do |t|
      t.text :clarity
      t.text :brightness
      t.text :concentration
      t.text :color
      t.text :secondary_colors
      t.text :staining
      t.text :tears
      t.boolean :gas
      t.boolean :sediment
      t.boolean :rim
      
      t.timestamps
    end
  end
end
