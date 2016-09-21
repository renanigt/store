class Shop < ActiveRecord::Base
  has_and_belongs_to_many :product, join_table: :shops_products
  validates_presence_of :name, :description
end
