class CreateSells < ActiveRecord::Migration[6.0]
  def change
    create_table :sells do |t|
      t.float :price
      t.integer :quantity
      t.date :dataSell
      t.float :discount
      t.float :measurement
      t.text :description
      t.float :sell

      t.timestamps
    end
  end
end
