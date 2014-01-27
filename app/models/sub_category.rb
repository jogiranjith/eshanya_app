class SubCategory < ActiveRecord::Base
belongs_to :category, :autosave =>true
end
