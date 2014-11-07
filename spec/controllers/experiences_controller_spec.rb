require 'rails_helper'

RSpec.describe ExperiencesController do

  describe "GET index" do

    it "assign @exps" do
      exp = Experience.create(company_name: 'Gomeeki', job_title: 'android developer', start_date: '11/11/1992')
      get :index
      expect(assigns(:exps)).to eq([exp])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template('index')
    end

  end

end