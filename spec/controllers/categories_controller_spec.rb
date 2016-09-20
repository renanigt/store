require 'rails_helper'

RSpec.describe CategoriesController do

  describe "GET index" do

    it "assgins @categories" do
      category = Category.create(title: "Technology")
      get :index
      expect(assigns(:categories)).to eq([category])
    end

    it "has status success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

end
