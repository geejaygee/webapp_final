class HarddrivesController < ApplicationController
  def new
    @harddrive=Harddrive.new
  end
  
  def create
    @harddrive=Harddrive.new(harddrive_params)
    if @harddrive.save
      redirect_to new_computer_path, notice: 'Hard Drive Added To List'
    else
      render :new
    end 
  end

  private
    def harddrive_params
      params.require(:harddrive).permit(:name)
     end
end
