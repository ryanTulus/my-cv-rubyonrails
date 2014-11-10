class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :job_title
      t.string :company_name
      t.date :start_date
      t.date :end_date
      t.references :user
    end
  end
end
