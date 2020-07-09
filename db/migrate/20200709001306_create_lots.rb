class CreateLots < ActiveRecord::Migration[5.1]
  def change
    create_table :lots do |t|
      t.string :lot_name
      t.integer :lot_area
      t.integer :lot_available_area

      t.timestamps
    end
  end
end
