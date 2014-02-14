class Product < ActiveRecord::Base
belongs_to :category
belongs_to :sub_category
has_many :variation_images

validates :name, presence: true
end
