class Experience < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :company_name, :job_title, :start_date
end