class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :template_theme_name
      t.attachment :html_file
      t.attachment :css_file
      t.references :admin
    end
  end
end
