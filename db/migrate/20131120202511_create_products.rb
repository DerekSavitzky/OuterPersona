class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :id
      t.integer :category_id
      t.string :name
      t.string :description
      t.integer :stock_quantity
      t.decimal :price
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
