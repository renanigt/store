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

    it "with name" do
      shops = Shop.with_name("t Sh")
      expect(shops).to include(shop)
    end

  end

end
