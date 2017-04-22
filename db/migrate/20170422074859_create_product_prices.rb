class CreateProductPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :product_prices do |t|
      t.integer :price
      t.datetime :start
      t.datetime :end
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
