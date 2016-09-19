class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :description
      t.string :serial_number
      t.string :asset_number
      t.string :acquisition_price
      t.references :equipmentCategory, foreign_key: true

      t.timestamps
    end
  end
end
