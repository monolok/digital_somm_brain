class CreateTestables < ActiveRecord::Migration[5.0]
  def change
    create_table :testables do |t|
      t.string :name

      t.timestamps
    end
  end
end
