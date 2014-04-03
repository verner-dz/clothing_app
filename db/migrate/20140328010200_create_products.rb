class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :qty
      t.integer :price
      t.string :img_url
      t.string :description
      t.references :supplier, index: true
    end
  end
end
