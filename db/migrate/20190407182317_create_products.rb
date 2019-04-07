class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :item_id
      t.float :price
      t.string :img
      t.timestamps
    end
  end
end
