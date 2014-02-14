class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.text :image
      t.integer :category_id
      t.timestamps
    end
  end
end