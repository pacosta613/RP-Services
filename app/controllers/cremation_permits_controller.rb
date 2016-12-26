class CremationPermitsController < ApplicationController

  def create
  end

  def update
  end

  def show
  end

  private

  def cremation_permits_params
    params.require(:cremation_permits).permit(:next_of_kin, :address, :relationship, :name_of_decease, :location_of_death, :date_of_death)
  end

end