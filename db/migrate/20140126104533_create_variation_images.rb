class CreateVariationImages < ActiveRecord::Migration
  def change
    create_table :variation_images do |t|
      t.text :image

      t.timestamps
    end
  end
end
