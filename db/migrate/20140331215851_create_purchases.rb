class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer    :price
      t.integer    :qty
      t.references :user
    end
  end
end
