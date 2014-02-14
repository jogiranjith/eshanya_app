class Category < ActiveRecord::Base
has_many :sub_categories
has_many :products
validates :name, presence: true
validates :image, presence: true
validates :description,presence: true
end
