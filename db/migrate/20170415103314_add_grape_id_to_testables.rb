class AddGrapeIdToTestables < ActiveRecord::Migration[5.0]
  def change
    add_column :testables, :grape_id, :integer
  end
end
