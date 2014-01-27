class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :image
      t.text :description
      t.boolean :classic
      t.boolean :contemporary
      t.timestamps
    end
  end
end
