class PiroFirstCallsController < ApplicationController

  def create
  end

  def update
  end

  def show
  end

  private

  def piro_first_call_params
    params.require(:piro_first_call).permit(:first_name, :middle_name, :last_name, :street_address, :cite, :state, :zipcode, :hospital_name, :hospital_city, :place_of_birth, :date_of_birth, :martial_status, :social_security, :last_occupation, :education_level, :mothers_name, :fathers_name, :spouse_name, :name_of_cemetery, :kin_first_name, :kin_last_name, :kin_relationship, :kin_street_address, :kin_city, :kin_state, :kin_zipcode, :kin_phone_number)
  end
end