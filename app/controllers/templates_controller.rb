class TemplatesController < DashboardsController

  before_action :authenticate_user!

  def new
    @template = Template.new
    @uploader = CssTemplateUploader.new
  end

  def create
    @template = Template.new(new_template_params)

    if @template.save
      redirect_to dashboards_path
    else
      render action: 'new'
    end
  end


  private

  def new_template_params
    params.require(:template).permit(:filename, :css_template)
  end

end
