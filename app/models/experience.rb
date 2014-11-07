class Experience < ActiveRecord::Base

  validates_presence_of :company_name, :job_title, :start_date
end