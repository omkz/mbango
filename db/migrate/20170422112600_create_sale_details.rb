class CreateSaleDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_details do |t|
      t.integer :quantity
      t.text :description
      t.decimal :sub_total, precision: 10, scale: 2
      t.text :description
      t.references :sale, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
