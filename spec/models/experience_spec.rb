require 'rails_helper'

describe Experience do

  it "has a valid factory" do
    FactoryGirl.create(:experience).should be_valid
  end

  it "is invalid without company name" do
    FactoryGirl.build(:experience, company_name: nil).should_not be_valid
  end

  it "is invalid without job title" do
    FactoryGirl.build(:experience, job_title: nil).should_not be_valid
  end

  it "is invalid without start date" do
    FactoryGirl.build(:experience, start_date: nil).should_not be_valid
  end

  it "is valid without end date" do
    FactoryGirl.build(:experience, end_date: nil).should be_valid
  end

  it "returns company name as 'Gomeeki'" do
    experience = FactoryGirl.create(:experience)
    experience.company_name.should == 'Gomeeki'
  end

  it "returns job title as 'Android Developer'" do
    experience = FactoryGirl.create(:experience)
    experience.job_title.should == 'Android Developer'
  end

  it "returns start date as 'Wed, 11 Nov 1992'" do
    experience = FactoryGirl.create(:experience)
    experience.start_date.should == Date.new(1992, 11, 11)
  end

  it "returns end date as 'Sun, 11 Nov 2001'" do
    experience = FactoryGirl.create(:experience)
    experience.end_date.should == Date.new(2001, 11, 11)
  end

end