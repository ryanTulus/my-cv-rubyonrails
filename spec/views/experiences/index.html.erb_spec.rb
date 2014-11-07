require 'rails_helper'

RSpec.describe 'experiences/index' do

  it "displays all the experiences" do
    assign(:exps, [
        Experience.create(company_name: 'GOAL.com', job_title: 'Web Programmer', start_date: '20/12/2012'),
        Experience.create(company_name: 'Kartika Sari', job_title: 'Baker', start_date: '30/09/2014', end_date: '29/12/2015')
    ])

    render

    expect(rendered).to match /GOAL/
    expect(rendered).to match /2015-12-29/
  end

end