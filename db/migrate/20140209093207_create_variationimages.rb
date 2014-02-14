class CreateVariationimages < ActiveRecord::Migration
  def change
    create_table :variationimages do |t|
      t.text :variation_images
      t.integer :product_id
      t.timestamps
    end
  end
end
