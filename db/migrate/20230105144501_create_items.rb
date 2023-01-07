class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.integer :quantity
      t.string :brand
      t.boolean :sold_out

      t.timestamps
    end
  end
end
