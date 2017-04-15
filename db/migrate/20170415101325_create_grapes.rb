class CreateGrapes < ActiveRecord::Migration[5.0]
  def change
    create_table :grapes do |t|
      t.string :name
      t.string :climate
      t.string :world

      t.timestamps
    end
  end
end
