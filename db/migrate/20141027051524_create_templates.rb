class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :filename
      t.string :css_template
    end
  end
end
