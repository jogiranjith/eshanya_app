class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :height
      t.string :width
      t.string :price
      t.text :image

      t.timestamps
    end
  end
end
