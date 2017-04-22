class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.decimal :discount, precision: 5, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
