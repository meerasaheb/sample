require 'rails_helper'
describe BooksController,type: :controller  do
  context "index" do
    it "should proper status code" do
      get :index
      expect(response.status).to eq 200
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      expect(response.status).to eq 200
    end
  end
end