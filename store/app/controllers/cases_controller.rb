class CasesController < ApplicationController
  def new
    @case=Case.new
  end
  
  def create
    @case=Case.new(case_params)
    if @case.save
      redirect_to new_computer_path, notice: 'Case Added'
    else
      render :new
    end 
  end

  private
    def case_params
      params.require(:case).permit(:name)
     end
end
