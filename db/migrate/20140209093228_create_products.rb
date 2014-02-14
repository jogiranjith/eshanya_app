class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :height
      t.string :width
      t.string :price
      t.text :image
      t.integer :category_id
      t.integer :sub_category_id
      t.timestamps
    end
  end
end
