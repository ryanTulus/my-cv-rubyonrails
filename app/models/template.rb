class Template < ActiveRecord::Base
  mount_uploader :css_template, CssTemplateUploader
end
