class CreateNoses < ActiveRecord::Migration[5.0]
  def change
    create_table :noses do |t|
      t.integer :intensity

      t.timestamps
    end
  end
end
