class WrittenStatementsController < ApplicationController

  def create
  end

  def update
  end

  def show
    
  end

  private

  def written_statements_params
    params.require(:written_statements).permit(:next_of_kin, :name_of_decease, :date)
  end
end