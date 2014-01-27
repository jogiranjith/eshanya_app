class AddCategoryIdSubCategory < ActiveRecord::Migration
  def change
     add_column :sub_categories,:category_id,:integer
  end
end
