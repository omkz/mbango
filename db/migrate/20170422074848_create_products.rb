class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :is_active
      t.text :description
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
