class AddProviderToProduct < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :provider, null: true, foreign_key: true
  end
end
