class Education < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :school_name, :school_address

end