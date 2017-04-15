class AddGrapeIdToNoses < ActiveRecord::Migration[5.0]
  def change
    add_column :noses, :grape_id, :integer
  end
end
