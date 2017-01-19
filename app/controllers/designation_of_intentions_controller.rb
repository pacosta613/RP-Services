class DesignationOfIntentionsController < ApplicationController

  def new
    @intention = DesignationOfIntention.new
  end

  def create
    @intention = DesignationOfIntention.create(designation_of_intention_params)
    @intention = DesignationOfIntention.user_id = current_user.id
    if @intention.save

      redirect_to @intention
    end
  end

  def update
    @intention = DesignationOfIntention.update(designation_of_intention_params)
    if @intention.save

      redirect_to @intention
    end
  end

  def show
    @intention = DesignationOfIntention.find(params[:id])
  end

  private

  def designation_of_intention_params
    params.require(:designation_of_intention).permit(:user_id, :name_of_deceased, :scheduled_cremation, :location_cremation, :phone_number, :address, :signature, :location_of_cemetery, :manner_of_disposition, :location, :date, :name)
  end

end