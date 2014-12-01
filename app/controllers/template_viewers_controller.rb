class TemplateViewersController < ApplicationController
  
  before_action :authenticate_user!
  
  def index
    @templates = Template.all
    @educations = Education.where(user_id: current_user.id)
    @experiences = Experience.where(user_id: current_user.id)
  end
  
end