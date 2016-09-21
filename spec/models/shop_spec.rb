require 'rails_helper'

RSpec.describe Shop do
  
  describe "validation" do

    let(:shop) { Shop.new(name: "", description: "") }

    it "is invalid" do
      expect(shop).to be_invalid
    end

    it "name has errors" do
      shop.valid?
      expect(shop.errors[:name].any?).to be true
    end

    it "title has errors" do
      shop.valid?
      expect(shop.errors[:description].any?).to be true
    end

    it "is valid" do
      shop = Shop.new(name: "Any name", description: "Some descripton")
      expect(shop).to be_valid
    end

  end

  describe "searches" do
    let(:shop) { Shop.create(name: "Test Shop", description: "Test Shop description") }

    it "by name and returns the shop" do
      shops = Shop.find_by_name("t Sh")
      expect(shops).to include(shop)
    end

    it "by name and does not includes the shop" do
      shops = Shop.find_by_name("TesK")
      expect(shops).not_to include(shop)
    end

  end

end
