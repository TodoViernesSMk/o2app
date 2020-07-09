class CreateCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :codes do |t|
      t.string :code_name
      t.integer :code_area
      t.boolean :code_status
      t.references :lot, foreign_key: true

      t.timestamps
    end
  end
end
