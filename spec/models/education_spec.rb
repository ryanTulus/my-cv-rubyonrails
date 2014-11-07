require 'rails_helper'

describe Education do

  it "has a valid factory" do
    FactoryGirl.create(:education).should be_valid
  end

  it "is invalid without school_name" do
    FactoryGirl.build(:education, school_name: nil).should_not be_valid
  end

  it "is invalid without school_address" do
    FactoryGirl.build(:education, school_address: nil).should_not be_valid
  end

  it "returns school name as 'IPEKA'" do
    education = FactoryGirl.create(:education)
    education.school_name.should == 'sesuatu'
  end

  it "returns school address as 'Meruya'" do
    education = Education.create(school_name: 'IPEKA', school_address: 'Meruya')
    education.school_address.should == 'Meruya'
  end

end