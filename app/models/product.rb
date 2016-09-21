class Product < ActiveRecord::Base
  has_and_belongs_to_many :shop, join_table: :shops_products
  belongs_to :category
  validates_presence_of :title, :description, :category
end
