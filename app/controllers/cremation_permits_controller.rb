class CremationPermitsController < ApplicationController

  def new
    @cremation = CremationPermit.new
  end
  
  def create
    @cremation = CremationPermit.create(cremation_permits_params)
    @cremation.user_id = current_user.id
    if @cremation.save

      redirect_to @cremation
    end
  end

  def update
    @cremation = CremationPermit.update(cremation_permits_params)
    if @cremation.save

      redirect_to @cremation
    end
  end

  def show
    @cremation = CremationPermit.find(params[:id])
  end

  private

  def cremation_permits_params
    params.require(:cremation_permits).permit(:user_id, :next_of_kin, :address, :relationship, :name_of_decease, :location_of_death, :date_of_death)
  end

end