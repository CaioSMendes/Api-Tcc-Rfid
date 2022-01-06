class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.string :unity
      t.text :description
      t.string :productCode
      t.string :gtin
      t.string :rfid

      t.timestamps
    end
  end
end
