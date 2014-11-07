require 'rails_helper'

RSpec.describe "educations/index" do

  it "displays all the education" do
    assign(:edus, [
      Education.create!(school_name: 'IPEKA', school_address: "Meruya"),
      Education.create!(school_name: 'SPH', school_address: "Karawaci")
    ])

    render

    expect(rendered).to match /Karawaci/
    expect(rendered).to match /Meruya/
  end

end