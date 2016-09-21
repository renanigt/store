class Product < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :shop, join_table: :shops_products
  
  validates_presence_of :title, :description, :category

  scope :with_title, -> (title) { where("products.title LIKE :title", { title: "%#{title}%" }) }
  scope :with_category, -> (category_id) { joins(:category).where(categories: { id: category_id }) }
end
