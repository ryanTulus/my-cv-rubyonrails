class Education < ActiveRecord::Base

  validates_presence_of :school_name, :school_address

end