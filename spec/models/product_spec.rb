require 'rails_helper'

RSpec.describe Product do
  
  describe "validation" do

    let(:product) { Product.new(title: "", description: "") }

    it "is invalid" do
      expect(product).to be_invalid
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
      expect(product).to be_valid
    end
  
  end

  describe "searches" do
    let(:category) { Category.create(title: "Books") }
    let(:product) { Product.create(title: "Rails Book", description: "Book about Rails", category_id: category.id) }

    it "with title" do
      products = Product.with_title("ils Book")
      expect(products).to include(product)
    end

    it "with category" do
      products = Product.with_category(category.id)
      expect(products).to include(product)
    end

    it "with title and category" do
      products = Product.with_title("ils Book").with_category(category.id)
      expect(products).to include(product)
    end

  end

end
