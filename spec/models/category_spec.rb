require 'rails_helper'

RSpec.describe Category do

  describe "validation" do

    let(:category) { Category.new(title: "") }
    
    it "is invalid" do
      expect(category.invalid?).to be true
    end

    it "title has erros" do
      category.invalid?
      expect(category.errors[:title].any?).to be true
    end

  end

end
