class EducationsController < ApplicationController

  def index
    @edus = Education.all

  end

  def new
    @edu = Education.new
  end

  def create
    @edu = Education.new(new_education_param)
    @edu.user_id = current_user.id
    Rails.logger.info ">>>>>>>>>>>>>>>>> #{@edu.inspect}"

    if user_signed_in? && @edu.save
      redirect_to homepages_path
    else
      Rails.logger.info ">>>>>>>>>>>>>> #{@edu.errors.inspect}"
      render action: 'new'
    end

  end

  def edit
    @edu = Education.find(find_education_param)
  end

  def update
    @edu = Education.find(find_education_param)
    if @edu.update_attributes(update_education_param)
      redirect_to homepages_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @edu = Education.find(find_education_param)
    Rails.logger.info ">>>>>>>>>>>>>>> #{destroy_education_param.inspect}"

    @edu.delete
    redirect_to action: homepages_path
  end



  private

  def new_education_param
    params.require(:education).permit(:school_name, :school_address)
  end

  def update_education_param
    params.require(:education).permit(:school_name, :school_address)
  end

  def find_education_param
    params.require(:id)
  end


end