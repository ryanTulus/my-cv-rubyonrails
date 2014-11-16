class ExperiencesController < ApplicationController

  def index
    @exps = Experience.all
  end

  def new
    @exp = Experience.new
  end

  def create
    @exp = Experience.new(new_experience_params)
    @exp.user_id = current_user.id
    
    if user_signed_in? && @exp.save
      redirect_to homepages_path
    else
      render action: 'new'
    end
  end

  def edit
    @exp = Experience.find(find_experience_params)
  end

  def update
    @exp = Experience.find(find_experience_params)

    if @exp.update_attributes(new_experience_params)
      redirect_to homepages_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @exp = Experience.find(find_experience_params)

    @exp.delete
    redirect_to action: homepages_path
  end


  private

  def new_experience_params
    params.require(:experience).permit(:company_name, :job_title, :start_date, :end_date)
  end

  def find_experience_params
    params.require(:id)
  end

end