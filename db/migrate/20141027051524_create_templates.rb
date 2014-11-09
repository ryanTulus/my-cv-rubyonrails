class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :filename
      t.attachment :html_template
      t.attachment :css_template
    end
  end
end
