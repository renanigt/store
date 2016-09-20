require 'rails_helper'

RSpec.describe CategoriesController do

  describe "GET #index" do

    it "assgins @categories" do
      category = Category.create(title: "Book")
      get :index
      expect(assigns(:categories)).to eq([category])
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end

    it "has status success" do
      get :index
      expect(response).to have_http_status(:success)
    end

  end

  describe "GET #show" do

    let(:category) { Category.create(title: "Electronics") }

    it "assigns @category" do
      get :show, id: category
      expect(assigns(:category)).to eq(category)
    end

    it "renders the :show view" do
      get :show, id: category
      expect(response).to render_template(:show)
    end

    it "has status success" do
      get :show, id: category
      expect(response).to have_http_status(:success)
    end

  end

end
