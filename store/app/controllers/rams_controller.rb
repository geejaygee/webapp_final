class RamsController < ApplicationController
  def new
    @ram=Ram.new
  end
  
  def create
    @ram=Ram.new(ram_params)
    if @ram.save
      redirect_to new_computer_path, notice: 'Ram Added to the list'
    else
      render :new
    end 
  end

  private
    def ram_params
      params.require(:ram).permit(:name)
     end
end
