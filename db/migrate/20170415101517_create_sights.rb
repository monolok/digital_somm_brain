class CreateSights < ActiveRecord::Migration[5.0]
  def change
    create_table :sights do |t|
      t.string :color

      t.timestamps
    end
  end
end
