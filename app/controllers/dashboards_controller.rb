class DashboardsController < ApplicationController
  
  layout 'dashboards'
  
  before_action :authenticate_admin!

  def index
    @templates = Template.where(admin_id: current_admin.id)
  end

end
