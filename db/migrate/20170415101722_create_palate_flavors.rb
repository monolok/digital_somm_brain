class CreatePalateFlavors < ActiveRecord::Migration[5.0]
  def change
    create_table :palate_flavors do |t|
      t.text :fruit

      t.timestamps
    end
  end
end
