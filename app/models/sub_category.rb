class SubCategory < ActiveRecord::Base
belongs_to :category
has_many :products
validates :name, presence: true
end
