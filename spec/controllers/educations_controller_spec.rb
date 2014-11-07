require 'rails_helper'

RSpec.describe EducationsController do
  describe "GET index" do
    it "assign @edus" do
      edu = Education.create(school_name: 'jfois', school_address: 'sfiosjfs')
      get :index
      expect(assigns(:edus)).to eq([edu])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template('index')
    end
  end
end