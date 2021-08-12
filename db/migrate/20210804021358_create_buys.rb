class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.float :price
      t.integer :quantity
      t.date :dateBuy
      t.float :discount
      t.float :measurement
      t.text :description
      t.float :buy

      t.timestamps
    end
  end
end
