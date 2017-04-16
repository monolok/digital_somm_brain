class CreateSights < ActiveRecord::Migration[5.0]
  def change
    create_table :sights do |t|
      t.integer :color

      t.timestamps
    end
  end
end
