class Template < ActiveRecord::Base
  has_attached_file :html_template
  has_attached_file :css_template

  validates_attachment_presence :html_template

  validates_attachment_content_type :html_template, content_type: /text\/html/
  validates_attachment_content_type :css_template, content_type: /text\/css/
end
