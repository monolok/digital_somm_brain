class AddSightIdToGrapes < ActiveRecord::Migration[5.0]
  def change
    add_column :grapes, :sight_id, :integer
  end
end
