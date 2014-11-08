class DashboardsController < ApplicationController

  before_action :authenticate_user!

  def index
    @templates = Template.all
  end

end
