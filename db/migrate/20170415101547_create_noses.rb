class CreateNoses < ActiveRecord::Migration[5.0]
  def change
    create_table :noses do |t|
      t.text :clean
      t.text :intensity
      t.text :age
      t.text :fruit
      t.text :fruit_character
      t.text :non_fruit
      t.text :organic_earth
      t.text :inorganic_earth
      t.text :wood

      t.timestamps
    end
  end
end
