class CreateCatalogues < ActiveRecord::Migration
  def change
    create_table :catalogues do |t|
      t.integer :id
      t.string :name
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
