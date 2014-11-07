class TemplatesController < DashboardsController

  def new
    @template = Template.new
  end

end
