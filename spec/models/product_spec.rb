require 'rails_helper'

RSpec.describe Product do
  
  describe "validation" do

    let(:product) { Product.new(title: "", description: "") }

    it "is invalid" do
      expect(product.invalid?).to be true
    end

    it "title has errors" do
      product.valid?
      expect(product.errors[:title].any?).to be true
    end

    it "description has errors" do
      product.valid?
      expect(product.errors[:description].any?).to be true
    end

    it "is valid" do
      category = Category.create(title: "Books")
      product = Product.new(title: "Rails Book", description: "Book about Rails", category_id: category.id)
      expect(product.valid?).to be true
    end
  
  end
end
