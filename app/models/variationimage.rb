class Variationimage < ActiveRecord::Base
belongs_to :product
validates :variation_images , presence: true
end
