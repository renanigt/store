require 'rails_helper'

RSpec.describe Category do

  describe "validation" do

    let(:category) { Category.new(title: "") }
    
    it "is invalid" do
      expect(category).to be_invalid
    end

    it "title has errors" do
      category.invalid?
      expect(category.errors[:title].any?).to be true
    end

    it "is valid" do
      category = Category.new(title:"Books")
      expect(category).to be_valid
    end

  end

end
