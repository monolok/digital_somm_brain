class AddNoseIdToGrapes < ActiveRecord::Migration[5.0]
  def change
    add_column :grapes, :nose_id, :integer
  end
end
