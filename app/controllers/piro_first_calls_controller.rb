class PiroFirstCallsController < ApplicationController

  def create
    @firstcalls = PiroFirstCall.create(piro_first_call_params)
    if @firstcalls.save

      redirect_to @firstcalls
    end
  end

  def update
    if @firstcalls.update(piro_first_call_params)

      redirect_to @firstcalls
    end
  end

  def show
    @firstcalls = PiroFirstCall.find(params[:id])
  end

  def destroy
    @firstcalls.destroy

    redirect_to root_path
  end

  private

  def piro_first_call_params
    params.require(:piro_first_call).permit(:first_name, :middle_name, :last_name, :street_address, :cite, :state, :zipcode, :hospital_name, :hospital_city, :place_of_birth, :date_of_birth, :martial_status, :social_security, :last_occupation, :education_level, :mothers_name, :fathers_name, :spouse_name, :name_of_cemetery, :kin_first_name, :kin_last_name, :kin_relationship, :kin_street_address, :kin_city, :kin_state, :kin_zipcode, :kin_phone_number)
  end
end