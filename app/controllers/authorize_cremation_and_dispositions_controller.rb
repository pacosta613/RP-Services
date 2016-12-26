class AuthorizeCremationAndDispositionsController < ApplicationController

  def create
  end

  def update
  end

  def show
  end

  private

  def authorize_cremation_and_disposition_params
    params.require(:authorize_cremation_and_disposition).permit(:date, :case_number, :crematory_name, :address, :phone_number, :name_of_decease, :martial_status, :last_address, :place_of_death, :sex, :age, :date_of_birth, :date_of_death, :weight, :delivery, :relation_to_decease_number, :relation_to_decease_description, :funeral_name, :authorize_picker, :dispose_instruction, :urn, :purchased_urn, :urn_description, :funeral_director, :registration_number, :family_name, :family_address)
  end

end