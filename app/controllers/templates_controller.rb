class TemplatesController < DashboardsController

  before_action :authenticate_admin!

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(new_template_params)
    @template.admin_id = current_admin.id

    if @template.save
      redirect_to dashboards_path
    else
      render action: 'new'
    end
  end

  def edit
    @template = Template.find(find_template_params)
  end

  def update
    @template = Template.find(find_template_params)

    if @template.update_attributes(new_template_params)
      redirect_to dashboards_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @template = Template.find(find_template_params)

    @template.html_template = nil
    @template.css_template = nil
    @template.delete

    redirect_to dashboards_path
  end

  private

  def new_template_params
    params.require(:template).permit(:template_name, :html_template, :css_template)
  end

  def find_template_params
    params.require(:id)
  end
end
