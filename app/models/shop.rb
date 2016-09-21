class Shop < ActiveRecord::Base
  has_and_belongs_to_many :product, join_table: :shops_products
  validates_presence_of :name, :description

  scope :find_by_name, -> (name) { where("name LIKE :name", { name: "%#{name}%" }) }
end
