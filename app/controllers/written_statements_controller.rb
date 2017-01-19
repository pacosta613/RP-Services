class WrittenStatementsController < ApplicationController

  def new
    @statement = WrittenStatement.new
  end

  def create
    @statement = WrittenStatement.create(written_statements_params)
    @statement = WrittenStatement.user_id = current_user.id
    if @statement.save

      redirect_to @statement
    end
  end

  def update
    @statement = WrittenStatement.update(written_statements_params)
    if @statement

      redirect_to @statement
    end
  end

  def show
    @statement = WrittenStatement.find(params[:id])
  end

  private

  def written_statements_params
    params.require(:written_statements).permit(:user_id, :next_of_kin, :name_of_decease, :date)
  end
end