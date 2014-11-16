class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :template_name
      t.attachment :html_template
      t.attachment :css_template
      t.references :admin
    end
  end
end
