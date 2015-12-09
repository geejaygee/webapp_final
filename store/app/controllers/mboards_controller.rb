class MboardsController < ApplicationController
  def new
    @mbaord=Mboard.new
  end
  
  def create
    @mboard=Mboard.new(mboard_params)
    if @mboard.save
      redirect_to new_computer_path, notice: 'Motherboard Added'
    else
      render :new
    end 
  end

  private
    def mboard_params
      params.require(:mboard).permit(:name)
     end
end
