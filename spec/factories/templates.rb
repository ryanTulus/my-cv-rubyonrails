FactoryGirl.define do
  factory :template do |t|
    t.template_name 'FairTemplate'
    t.html_file { File.new("#{Rails.root}/spec/support/attachments/html_attachment.html") }
    t.css_file { File.new("#{Rails.root}/spec/support/attachments/css_attachment.css") }
  end
end