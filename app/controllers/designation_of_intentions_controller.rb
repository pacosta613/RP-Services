class DesignationOfIntentionsController < ApplicationController

  def create
    #.user_id = current_user.id
  end

  def update
  end

  def show
  end

  private

  def designation_of_intention_params
    params.require(:designation_of_intention).permit(:name_of_deceased, :scheduled_cremation, :location_cremation, :phone_number, :address, :signature, :location_of_cemetery, :manner_of_disposition, :location, :date, :name)
  end

end