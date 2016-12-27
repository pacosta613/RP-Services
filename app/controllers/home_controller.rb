class HomeController < ApplicationController
#skip_before_action :authenticate_user!, :only => [:index]

  def index
    @firstcall = PiroFirstCall.find_by(params[:id])
    @disposition = AuthorizeCremationAndDisposition.find_by(params[:id])
    @cremation = CremationPermit.find_by(params[:id])
    @statement = WrittenStatement.find_by(params[:id])
    @intention = DesignationOfIntention.find_by(params[:id])
  end
end