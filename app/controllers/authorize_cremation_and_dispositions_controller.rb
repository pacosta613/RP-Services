class AuthorizeCremationAndDispositionsController < ApplicationController

  def new
    @disposition = AuthorizeCremationAndDisposition.new
  end
  def create
    @disposition = AuthorizeCremationAndDisposition.create(authorize_cremation_and_disposition_params)
    @disposition.user_id = current_user.id
    if @disposition.save

      redirect_to @disposition
    end
  end

  def update
    @disposition = AuthorizeCremationAndDisposition.update(authorize_cremation_and_disposition_params)
    if @disposition.save

      redirect_to @disposition
    end
  end

  def show
    @disposition = AuthorizeCremationAndDisposition.find(params[:id])
  end

  private

  def authorize_cremation_and_disposition_params
    params.require(:authorize_cremation_and_disposition).permit(:user_id, :date, :case_number, :crematory_name, :address, :phone_number, :name_of_decease, :martial_status, :last_address, :place_of_death, :sex, :age, :date_of_birth, :date_of_death, :weight, :delivery, :relation_to_decease_number, :relation_to_decease_description, :funeral_name, :authorize_picker, :dispose_instruction, :urn, :purchased_urn, :urn_description, :funeral_director, :registration_number, :family_name, :family_address)
  end

end