class PiroFirstCallsController < ApplicationController
  # before_action :find_piro_first_calls, only: [:show]

  def new
    @firstcall = PiroFirstCall.new
  end

  def create
    @firstcall = PiroFirstCall.create(piro_first_call_params)
    if @firstcall.save

      redirect_to @firstcall
    end
  end

  def update
    if @firstcall.update(piro_first_call_params)

      redirect_to @firstcall
    end
  end

  def show
    @firstcall = PiroFirstCall.find(params[:id])
  end

  def destroy
    @firstcall.destroy

    redirect_to root_path
  end

  private

  def piro_first_call_params
    params.require(:piro_first_call).permit(:user_id, :first_name, :middle_name, :last_name, :street_address, :cite, :state, :zipcode, :hospital_name, :hospital_city, :place_of_birth, :date_of_birth, :martial_status, :social_security, :last_occupation, :education_level, :mothers_name, :fathers_name, :spouse_name, :name_of_cemetery, :kin_first_name, :kin_last_name, :kin_relationship, :kin_street_address, :kin_city, :kin_state, :kin_zipcode, :kin_phone_number)
  end

  # def find_piro_first_calls
  #   @firstcall = PiroFirstCall.find(params[:id])
  # end
end