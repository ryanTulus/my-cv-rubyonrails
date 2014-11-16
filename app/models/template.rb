class Template < ActiveRecord::Base
  has_attached_file :html_file
  has_attached_file :css_file
  
  validates_presence_of :template_theme_name
  validates_attachment_presence :html_file

  validates_attachment_content_type :html_file, content_type: /text\/html/
  validates_attachment_content_type :css_file, content_type: /text\/css/
end
