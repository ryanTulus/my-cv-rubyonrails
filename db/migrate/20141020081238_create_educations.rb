class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school_name
      t.string :school_address
      t.references :user
    end
  end
end
